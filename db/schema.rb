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

ActiveRecord::Schema.define(version: 20160302102803) do

  create_table "admins", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  create_table "owners", force: :cascade do |t|
    t.string   "name"
    t.integer  "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "owners", ["admin_id", "created_at"], name: "index_owners_on_admin_id_and_created_at"
  add_index "owners", ["admin_id"], name: "index_owners_on_admin_id"

  create_table "reservation_slots", force: :cascade do |t|
    t.integer  "day"
    t.integer  "startTime"
    t.integer  "endTime"
    t.integer  "reservation_target_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "reservation_token_id"
  end

  add_index "reservation_slots", ["reservation_target_id", "created_at"], name: "reservation_slots_index"
  add_index "reservation_slots", ["reservation_target_id"], name: "index_reservation_slots_on_reservation_target_id"
  add_index "reservation_slots", ["reservation_token_id"], name: "index_reservation_slots_on_reservation_token_id"

  create_table "reservation_targets", force: :cascade do |t|
    t.string   "name"
    t.integer  "category"
    t.integer  "owner_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "timeWindowInDays"
  end

  add_index "reservation_targets", ["owner_id", "created_at"], name: "index_reservation_targets_on_owner_id_and_created_at"
  add_index "reservation_targets", ["owner_id"], name: "index_reservation_targets_on_owner_id"

  create_table "reservation_tokens", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "reservation_target_id"
  end

  add_index "reservation_tokens", ["reservation_target_id"], name: "index_reservation_tokens_on_reservation_target_id"
  add_index "reservation_tokens", ["user_id"], name: "index_reservation_tokens_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "users", ["name"], name: "index_users_on_name", unique: true
  add_index "users", ["owner_id"], name: "index_users_on_owner_id"

end
