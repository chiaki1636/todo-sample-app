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
## 備考
「docker-compose-corrected.txt」は「docker-compose.yml」を以下のプロンプトでClaudeに出力させたものです。

> 内容を見て、間違っているところがあったら修正してください。
> 
> また、省略して書いている設定があったら、省略しない、より厳密な書き方に修正してください。
> 
> また、コメントにてつけた説明が合っているか確認し、間違っている場合はより適切なコメントを付けてください。
