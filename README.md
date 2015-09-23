GrunWald
======================

http://grunwald-midori.com/  
千葉県千葉市の天然酵母パン教室のホームページ。  

## 利用サービス
* github  
* [heroku](https://www.heroku.com/)  
* [CloudFlare](https://www.cloudflare.com/)  
* [circleci](https://circleci.com/)  
* [papertrail](https://addons.heroku.com/papertrail) ※herokuアドオン   
* [New Relic APM](https://addons.heroku.com/newrelic) ※herokuアドオン    
* [Cloudinary](https://addons.heroku.com/cloudinary) ※herokuアドオン    

## 利用した素材サイト
* [COOLTEXT](http://cooltext.com/)  
ロゴ画像（通常版）を作成  
* [squarespace](http://www.squarespace.com/logo)  
ロゴ画像（CAT版）を作成  

## パスワード管理方針
公開レポジトリのため、各種パスワードやトークンなどはアップロードしない。  
そのため、それらを環境変数に設定することが必要となる。  
```
# 設定内容
ENV['MAILER_USER'] : メールフォーム用SMTP メールアドレス
ENV['MAILER_PASSWORD'] : メールフォーム用STMP パスワード
ENV['CLOUDINARY_URL'] : Cloudinary用設定（herokuのみ有効）
```

### ローカル環境
rails server実行時は以下のコマンドを使う  

```
$ (key)=(value) rails s
```

### 本番環境(heroku)
herokuコマンドで設定  

```
$ heroku config:add (key)=(value)
```
