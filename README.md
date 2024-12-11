# todoアプリ

## 概要
このアプリはdockerのサンプルプロジェクトから作成しました。

https://matsuand.github.io/docs.docker.jp.onthefly/get-started/

元プロジェクトはここです。

https://github.com/docker/getting-started/tree/master/app

　

gitとdockerの練習でpushしています。

dockerを立ち上げたあと、入力値の保存と実行中のソースコード変更ができることを確認する予定です。

## 使い方
```bash
git clone https://github.com/chiaki1636/todo-sample-app
```

## コンテナを立てる
```bash
cd todo-sample-app
docker compose up --build
```

## コンテナを削除する
ボリュームは削除されないので注意してください。

```bash
docker compose down
```
