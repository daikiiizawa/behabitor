== behabitor

Habitorとは習慣者のことです。
習慣者とは、より良い人生を送れるために、良い習慣を身につけられる人のことです。
behabitorはそんな習慣者になれるようITでナビゲートするwebサービスです。

## 開発環境を作る

### 使用しているソフトウェア
* Ruby 2.3.1
* SQLite3(予定)
* NodeJS(予定)

### 設定
現在はなし

* アプリケーションを動かす
ソースコードをcloneした後、以下を実行してください。

```
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
$ bundle exec rails s -b 0.0.0.0
```

[http://localhost:3000](http://localhost:3000) にアクセスすると、
サイトのトップページが表示されるはずです。

* DBの初期化
詳細は今後記載予定

### テストの実行

```
$ bundle exec rspec
```

### 依存サービス
特なし