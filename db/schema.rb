# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160528132310) do

  create_table "activities", force: :cascade do |t|
    t.string   "old_id"
    t.string   "sex_id"
    t.string   "activity_level"
    t.integer  "first_1"
    t.integer  "first_2"
    t.integer  "second_1"
    t.integer  "second_2"
    t.integer  "third_1"
    t.integer  "third_2"
    t.integer  "fourth_1"
    t.integer  "fourth_2"
    t.integer  "sum"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "large_items", force: :cascade do |t|
    t.string   "large_id"
    t.string   "large_val"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string   "activity_level"
    t.string   "activity_val"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "middle_items", force: :cascade do |t|
    t.string   "middle_id"
    t.string   "large_id"
    t.string   "middle_value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "olds", force: :cascade do |t|
    t.string   "old_id"
    t.string   "old_val"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "small_items", force: :cascade do |t|
    t.string   "large_id"
    t.string   "middle_id"
    t.string   "small_val"
    t.integer  "weight"
    t.integer  "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_items", force: :cascade do |t|
    t.string   "user_id"
    t.integer  "first_1_sum"
    t.integer  "first_2_sum"
    t.integer  "second_1_sum"
    t.integer  "second_2_sum"
    t.integer  "third_1_sum"
    t.integer  "third_2_sum"
    t.integer  "fourth_1_sum"
    t.integer  "fourth_2_sum"
    t.integer  "sum_sum"
    t.string   "first_1_flg"
    t.string   "first_2_flg"
    t.string   "second_1_flg"
    t.string   "second_2_flg"
    t.string   "third_1_flg"
    t.string   "third_2_flg"
    t.string   "fourth_1_flg"
    t.string   "fourth_2_flg"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "old_id"
    t.string   "sex_id"
    t.string   "activity_level"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
