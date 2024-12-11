# syntax=docker/dockerfile:1

# Node.js v16をベースにした軽量なAlpineイメージを使用
# リンク先ではv12だがエラーが出たのでバージョンをあげて実行する
FROM node:16-alpine

# アプリケーションのビルドに必要な依存パッケージをインストール
# - python2: nodeのビルドツールに必要
# - g++: ネイティブアドオンのコンパイルに必要
# - make: ビルドプロセスで使用
# node.jsでpython2のサポートが終了しているため、python3に変更
# build-base には g++ や make が含まれています
RUN apk add --no-cache python3 build-base

# コンテナ内の作業ディレクトリを/appに設定
WORKDIR /app

# カレントディレクトリの全ファイルをコンテナの作業ディレクトリにコピー
COPY . .

# 本番環境用のnode_modulesをインストール
# --production フラグで開発用の依存パッケージを除外
RUN yarn install --production

# コンテナ起動時に実行されるコマンドを指定
# Node.jsアプリケーションを起動
CMD ["node", "src/index.js"]

# コンテナがリッスンするポートを指定
# このポートでアプリケーションが実行される
EXPOSE 3000

