# 静かな家に住もう

(./shizukanaie.top.png)

* 住居の音環境について投稿をしたり閲覧するサイトです。
* 音環境に特化した投稿のみを扱います。 
* 評価を1〜5（小数点1位まで）でつけます。

## URL

http://shizukanaie.jp/

## 目指した問題解決

### ペルソナ

* 音に敏感な方
* 物件に住む前に音環境について知りたい方
* いろいろな角度から物件をリサーチしたい方

### ペルソナの課題

| 課題                　　　　　　　　　　|解決方法  　　　　　　　　　　　　　　　　　　　　　　　　             |
| --------------------     | ------------------------        |
| 実際に住んでみないと音環境がわからない           |住んだことがある、もしくは体験したことがある人が情報を共有する          |
| 音環境について情報が少ない　　　　　　　　　　　   |情報を投稿、閲覧できるサイトを利用して情報を得る　　　　　　          |

### 課題を解決したいと感じた背景、意図
-自分自身が音に敏感であり、賃貸物件にいくつか住んでいたときに音に悩まされた経験がある。
-ネットには物件情報は掲載されているが音環境は検索しても出てこないため、実際に住んでみないとわからない事が多い。
-実際に住んだことがある方が情報を投稿することで事前に引っ越しの参考にすることができるアプリを作成したいと考えこのアプリを作成した。


<div id="top"></div>

## 使用技術一覧

<!-- シールド一覧 -->
<!-- 該当するプロジェクトの中から任意のものを選ぶ-->
<p style="display: inline">
  <!-- バックエンドのフレームワーク一覧 -->
  <img src="https://img.shields.io/badge/-Ruby%20on%20rails-D30001.svg?logo=ruby%20on%20rails&style=for-the-badge">
  <!-- バックエンドの言語一覧 -->
  <img src="https://img.shields.io/badge/-Ruby-CC342D.svg?logo=Ruby&style=for-the-badge">
  <!-- フロントエンドのフレームワーク一覧 -->
  <img src="https://img.shields.io/badge/-javascript-F7DF1E.svg?logo=javascript&style=for-the-badge">
  <!-- ミドルウェア一覧 -->
  <img src="https://img.shields.io/badge/-Nginx-269539.svg?logo=nginx&style=for-the-badge">
  <img src="https://img.shields.io/badge/-MySQL-4479A1.svg?logo=mysql&style=for-the-badge&logoColor=white">
  <!-- インフラ一覧 -->
  <img src="https://img.shields.io/badge/-Amazon%20aws-232F3E.svg?logo=amazon-aws&style=for-the-badge">
  <img src="https://img.shields.io/badge/-amazonec2-FF9900.svg?logo=amazonec2&style=for-the-badge">
</p>


## 環境

<!-- 言語、フレームワーク、ミドルウェア、インフラの一覧とバージョンを記載 -->

### バックエンド
| 言語・フレームワーク  | バージョン |
| -------------------- | ---------- |
| Ruby                 | 3.2.4      |
| Ruby on Rails        | 7.0.4.3    |
| MySQL                | 8.0        |
| Nginx                | 1.22.1     |
| puma                 | 5.6.8      |

### フロントエンド
| 言語・フレームワーク  | バージョン |
| -------------------- | ---------- |
| HTML/CSS             |　　　       |
| Javascript           |　　　       |
| bootstrap-sass       | 3.4.1　    |

### インフラ・その他開発環境
| 開発環境  | バージョン |
| -------------------- | ---------- |
| AWS-RDS,Route53,VPC  |            |
| EC2     　　　　　　   |　Amazon Linux 2     |
| Git/Github          |         |

## 実装した機能

* アカウント登録
* アカウント編集
* アカウント削除
* 新規投稿
* 投稿編集
* 投稿削除
* 投稿一覧表示
* 投稿検索
* 投稿エリア検索
* いいね機能
