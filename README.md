# README

## ライブオークションwebサービスの技術調査用

### 環境
・ruby 2.6
・rails 6.0
・ postgres

### これまでにやったこと
・docker-composeで起動

・入札してaction cableによってDOM要素（入札価格）が更新される

### 立ち上げ手順
$ docker-compose build

$ docker-compose run web bundle install

$ docker-compose run web yarn install --ckeck-files

$ docker-compose up -d 

$ docker-compose run web bundle exec rake db:setup
