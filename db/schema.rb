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

ActiveRecord::Schema.define(version: 20160602042646) do

  create_table "activities", force: :cascade do |t|
    t.string   "old_id"
    t.string   "sex_id"
    t.string   "activity_level"
    t.float    "large1"
    t.float    "large2"
    t.float    "large3"
    t.float    "large4"
    t.float    "large5"
    t.float    "large6"
    t.float    "large7"
    t.float    "large8"
    t.float    "large9"
    t.float    "sum"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "large_items", force: :cascade do |t|
    t.string   "large_val"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string   "activity_val"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "middle_items", force: :cascade do |t|
    t.integer  "large_item_id"
    t.string   "middle_val"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "middle_items", ["large_item_id"], name: "index_middle_items_on_large_item_id"

  create_table "olds", force: :cascade do |t|
    t.string   "old_val"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "small_items", force: :cascade do |t|
    t.integer  "middle_item_id"
    t.string   "small_val"
    t.integer  "weight"
    t.float    "point"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "small_items", ["middle_item_id"], name: "index_small_items_on_middle_item_id"

  create_table "user_foods", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "large_id"
    t.string   "middle_id"
    t.string   "small_id"
    t.integer  "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_foods", ["user_id"], name: "index_user_foods_on_user_id"

  create_table "user_items", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "large1_sum"
    t.float    "large2_sum"
    t.float    "large3_sum"
    t.float    "large4_sum"
    t.float    "large5_sum"
    t.float    "large6_sum"
    t.float    "large7_sum"
    t.float    "large8_sum"
    t.float    "large9_sum"
    t.float    "sum_sum"
    t.string   "large1_flg"
    t.string   "large2_flg"
    t.string   "large3_flg"
    t.string   "large4_flg"
    t.string   "large5_flg"
    t.string   "large6_flg"
    t.string   "large7_flg"
    t.string   "large8_flg"
    t.string   "large9_flg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_items", ["user_id"], name: "index_user_items_on_user_id"

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
