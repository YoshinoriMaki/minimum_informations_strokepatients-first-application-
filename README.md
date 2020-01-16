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
|sex|integer|null: false|

## informationsテーブル
<!-- informationは1-1の関係をuserと有している-->
|Column|Type|Options|
|------|----|-------|
|hypertension|integer|null: false|
|medication_hypertension|text||
|diabetes|integer|null: false|
|medication_diabetes|text||
|hyperlipidemia|integer|null: false|
|medication_hyperlipidemia|text||
|liver_malfunction|integer|null: false|
|kidney_malfunction|integer|null: false|
|intracranial_hemorrhage|integer|null: false|
|usage_antithrombotic|integer|null: false|
|residence|integer|null: false|
|activity_outside|integer|null: false|
|activity_inside|integer|null: false|


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
