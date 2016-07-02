# behabitor
## behabitorとは
Habitorとは習慣者のことです。

習慣者とは、より良い人生を送れるために、良い習慣を身につけられる人のことです。

behabitorはそんな習慣者になれるようITでナビゲートするwebサービスです。

## 開発環境を作る

### 使用しているソフトウェア
* Ruby 2.3.1
* SQLite3(予定)
* NodeJS(予定)

### 設定
現在は特に設定する項目はありません。

### アプリケーションを動かす
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

### DBの初期化
現在は特に初期化する項目はありません。


### テストの実行
以下のテストで実行できます。

```
$ bundle exec rspec
```

### 依存サービス
特にありません。

## ライセンス

Copyright 2016-2016 Behabitor

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.