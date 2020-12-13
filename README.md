# README

## ライブオークションの技術調査用

### これまでにやったこと
・docker-composeで起動

・入札してaction cableによってDOM要素（入札価格）が更新される

### 立ち上げ
$ docker-compose build
$ docker-compose run web bundle install
$ docker-compose run web bundle exec rake db:setup
