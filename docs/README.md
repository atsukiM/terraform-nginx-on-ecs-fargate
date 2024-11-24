<div id="top"></div>

## 使用技術一覧

<p style="display: inline">
<img src ="https://qiita-user-contents.imgix.net/https%3A%2F%2Fimg.shields.io%2Fbadge%2F-terraform-20232A%3Fstyle%3Dfor-the-badge%26logo%3Dterraform%26logoColor%3D844EBA?ixlib=rb-4.0.0&auto=format&gif-q=60&q=75&s=7c06c9eb64797f5d40199d3c8a6fdbf8">

<img src ="https://qiita-user-contents.imgix.net/https%3A%2F%2Fimg.shields.io%2Fbadge%2F-AWS%2520fargate-232F3E.svg%3Flogo%3Daws-fargate%26style%3Dfor-the-badge?ixlib=rb-4.0.0&auto=format&gif-q=60&q=75&s=a2a1fb4b8fcc05e1bed888c7564866a7">

<img src ="https://qiita-user-contents.imgix.net/https%3A%2F%2Fimg.shields.io%2Fbadge%2F-Nginx-269539.svg%3Flogo%3Dnginx%26style%3Dfor-the-badge?ixlib=rb-4.0.0&auto=format&gif-q=60&q=75&s=3fd95b04ba4987dde181146b5285d5c9">
</p>

## 目次

- [使用技術一覧](#使用技術一覧)
- [目次](#目次)
- [プロジェクトについて](#プロジェクトについて)
- [ルール](#ルール)
- [環境](#環境)
- [ディレクトリ構成](#ディレクトリ構成)
- [開発環境構築](#開発環境構築)
- [トラブルシューティング](#トラブルシューティング)

## プロジェクトについて
TERRAFORM-NGINX-ON-ECS-FARGATE  
Terraformを使用して、NginxをECS Fargateでデプロイします

## ルール
ステートはリモート管理する。ステート用のS3バケットはCloudFormationで作成する。

開発(dev)環境を、モジュールを使用して作成する前提とする。  

main.tf, varibles.tf, outputs.tf は中身が空でも作成する。  

variableとoutputにはdescription,typeを必ずつける。  

tflintで使用していない変数の削除などを工夫する。  

envsの中は環境だけで分けるのではなく、環境×複数のコンポーネントで分ける。考慮点は更新頻度や、他のコンポーネントからの参照頻度。誤って操作するとまずいもの。

locals:locals.tfに記載する。値の変更は不可。式を使った複雑な処理が可能。（3項演算子、繰り返し） 
 
variables:variables.tfに記載する。値に変更が可能。

## 環境
[!プレビュー](./infrastructure.drawio)

## ディレクトリ構成


## 開発環境構築
tfenvインストール

## トラブルシューティング
