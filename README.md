# Getting started with Play (Scala)

This project demonstrate how to create a simple CRUD application with Play.  
PlayFramework2で容易されているSlickを使ったサンプルサプリケーションを拡張しました。

## 検証したこと
- PlayFrameworkの動作理解
  - アセットの使い方(Bootstrap導入)
- RESTを使ってデータのGET/POSTの検証
- MySQLと接続してデータの取り出し

## 修正予定
- MySQLをDockerで構築して動作確認を容易にする
  - コンテナのIPアドレスは決め打ちのため汎用性を高める(優先度低)
- データベースのスキーマをパースして、柔軟にMySQLへのCRUDを拡張する仕組み
- コードにコメントをつける(振り返り)

## 使い方(メモ)

### 前提
- Dockerがインストールされていること
  - 公式ドキュメント：Ubuntuの場合は[こちら](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
  - 他のディストリビューションも公式ドキュメントやQiita等で検索
- docker-composeがインストールされていること
  - インストール手順
```bash
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version #バージョンが表示されたらOK
```

- sbtコマンドがインストールされていること
  - PlayFrameworkの起動に必要
  - Ubuntuの場合
```bash
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt
```

### MySQLをdockerで起動
```bash
cd docker
docker-compose up -d
```

### sbt起動(CRUD直下)
```bash
sbt run # 初回は必要なライブラリの取得を行うため数分〜かかる
```

### ブラウザでアクセス
```bash
localhost:9000
```
