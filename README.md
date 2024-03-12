#  トラコミ
##  ■サービス概要
学校、恋愛、仕事や日常生活などで  
「やらかしたー！」と思うtragicomicな出来事をつぶやいて共有できるCGMサービスです。  
あなたのやらかしを教えてください。  

##  ■ このサービスへの思い・作りたい理由
よくTwitterで「担々麺を床にぶちまけた」などのやらかし画像やエピソードが好きでよくいいねしていました。  
そこで「近くで見ると悲劇、遠くから見れば喜劇」をこのサービスのテーマとして考えました。  
私はこの言葉を決して否定的に捉えていません。  
何か悲しい出来事があったときに、自分の目線で見るのか他人の目線で見るのかによって受け止め方が少し変わるかもしれない。  
逆に他人の失敗を知って勇気づけられるかもしれない。  
「やらかした」を昇華できる場を提供できるサービスを作りたいと思いました。  

##  ■ ユーザー層について
その日やらかした人

##  ■サービスの利用イメージ
ユーザーは日々のやらかしを投稿することが可能で、他ユーザーは新着の投稿一覧と過去の投稿一覧から「悲劇」と「喜劇」というリアクションが可能です。  
リアクションが多い投稿は過去のアーカイブとして月間のやらかしに保存され（匿名も可）閲覧できます。  
投稿一覧には今まで投稿されたやらかしの総数が表示されます。
個人/全体で曜日や時間帯ごとの投稿数をグラフとして確認することもできます。  
また掲示板機能を利用することでユーザー間でコミュニケーションを取ることができます。  

##  ■ ユーザーの獲得について
Xなどを活用した宣伝  
友人やコミュニティでの宣伝

##  ■ サービスの差別化ポイント・推しポイント
投稿されたやらかしが月毎にまとめられ蓄積されていくので、人々が普段どんなユニークな失敗をしているのかを知ることができます。

##  ■ 機能候補
###  MVPリリース
-  会員登録、ログイン機能
-  投稿機能
-  投稿一覧表示
-  リアクション機能
###  本リリース
-  グラフ画面
-  掲示板機能
-  検索機能
-  プロフィール設定機能

##  ■ 機能の実装方針予定
###  バックエンド
-  Ruby 3.2.3
-  Rails 7.1.3.2
###  フロントエンド
-  Bootstrap 5.3.3
-  JavaScript
###  インフラ
-  fly.io
###  データベース
-  PostgreSQL
###  開発環境
-  docker
### 画面遷移図
https://www.figma.com/file/EQCaB1PI65ODXzuZWqI8Hi/%E3%83%88%E3%83%A9%E3%82%B3%E3%83%9F%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB?type=design&node-id=0%3A1&mode=design&t=NT88iGvF1PyZacSw-1
### ER図
[![Image from Gyazo](https://i.gyazo.com/029c92571e23c38c8e665727d75e3228.png)](https://gyazo.com/029c92571e23c38c8e665727d75e3228)
