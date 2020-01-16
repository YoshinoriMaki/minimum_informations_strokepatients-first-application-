# README
# README
<!-- chatspace機能
　　　user(id email password nickname)
     chatroom(id)
     message(id text)
     image(id) -->

## usersテーブル
<!-- userは多-多の関係をchatroomと, １ー多の関係をmassageと, １ー多の関係をimageと持っている -->
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|username|string|null: false|
### Association
- has_many :messages
- has_many :groups, through: :users_groups
- has_many :users_groups

## groupsテーブル
<!-- chatroomは多-多の関係をuserと, １ー多の関係をmassageともっている -->
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
### Association
- has_many :messages
- has_many :users, through: :users_groups
- has_many :users_groups

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## messagesテーブル
<!-- messageは １ー多の関係をuserと, １ー多の関係をchatroomと持っている -->
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|text||
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group 


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
