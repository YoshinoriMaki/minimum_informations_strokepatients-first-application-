# README
<!-- data registration機能
　　　user(id name password birthday age sex)
     informations(id) -->

## usersテーブル
<!-- userは1-1の関係をinformationと有している-->
|Column|Type|Options|
|------|----|-------|
|password|string|null: false|
|username|string|null: false|
|birthday|string|null: false|
|age|string|null: false|
|sex|string|null: false|

## informationsテーブル
<!-- informationは1-1の関係をuserと有している-->
|Column|Type|Options|
|------|----|-------|
|hypertension|tinyinf(1)|null: false|
|medication-hypertension|text||
|diabetes|tinyinf(1)|null: false|
|medication-diabetes|text||
|hyperlipidemia|tinyinf(1)|null: false|
|medication-hyperlipidemia|text||
|liver-malfunction|tinyinf(1)|null: false|
|kidney-malfunction|tinyinf(1)|null: false|
|intracranial-hemorrhage|tinyinf(1)|null: false|
|usage-antithrombotic|tinyinf(1)|null: false|
|residence|tinyinf(1)|null: false|
|activity-outside|tinyinf(1)|null: false|
|activity-inside|tinyinf(1)|null: false|


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
