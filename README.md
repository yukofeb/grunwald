# GrunWald
http://grunwald-midori.com/  
千葉県千葉市の天然酵母パン教室のホームページ。  
作成中。  

# パスワード管理方針
公開レポジトリのため、各種パスワードやトークンなどはアップロードしない。  
そのため、それらを環境変数に設定することが必要となる。  
```
# 設定内容
ENV['MAILER_USER']
ENV['MAILER_PASSWORD']
```

## ローカル環境
rails server実行時は以下のコマンドを使う  

```
$ (key)=(value) rails s
```

## 本番環境(heroku)
herokuコマンドで設定  

```
$ heroku config:add (key)=(value)
```

## 利用したサイト
* [COOLTEXT](http://cooltext.com/)  
ロゴ画像（通常版）を作成  
* [squarespace](http://www.squarespace.com/logo)  
ロゴ画像（CAT版）を作成  

## memo
* 作成中のため、フリー画像利用中  
[pixabay](https://pixabay.com/)  
