# GrunWald
千葉県千葉市の天然酵母パン教室のホームページ。  
作成中。  

# パスワード管理方針
公開レポジトリのため、各種パスワードやトークンなどはアップロードしない。  
そのため、以下の対応が必要となる。  

** ローカル環境
以下の項目を環境変数に設定する。  

```
ENV['MAILER_USER'],
ENV['MAILER_PASSWORD']
```

rails server実行時は以下のコマンドで。  

```
$ (key)=(value) rails s
```

** 本番環境(heroku)
コマンドラインで設定  

```
$ heroku config:add (key)=(value)
```

## memo
* 作成中のため、フリー画像利用中  
[pixabay](https://pixabay.com/)  
