# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_17_071252) do

  create_table "information", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "intracranial_hemorrhage", null: false
    t.integer "infraction_episodes", null: false
    t.integer "usage_antithrombotic", null: false
    t.text "usage_antithrombotic2"
    t.integer "hypertension", null: false
    t.text "medication_hypertension"
    t.integer "diabetes", null: false
    t.text "medication_diabetes"
    t.integer "hyperlipidemia", null: false
    t.text "medication_hyperlipidemia"
    t.integer "liver_malfunction", null: false
    t.integer "kidney_malfunction", null: false
    t.integer "residence", null: false
    t.integer "activity_outside", null: false
    t.integer "activity_inside", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "username", null: false
    t.string "birthday", null: false
    t.string "age", null: false
    t.integer "sex"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
