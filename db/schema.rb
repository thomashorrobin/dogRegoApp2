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

ActiveRecord::Schema.define(version: 20150609080257) do

  create_table "breeds", force: :cascade do |t|
    t.string   "BreedName",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string   "Name",       limit: 255
    t.date     "Birthday"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "owner_id",   limit: 4,   null: false
    t.integer  "breed_id",   limit: 4,   null: false
  end

  add_index "dogs", ["breed_id"], name: "index_dogs_on_breed_id", using: :btree
  add_index "dogs", ["owner_id"], name: "index_dogs_on_owner_id", using: :btree

  create_table "owners", force: :cascade do |t|
    t.string   "Name",          limit: 255
    t.string   "PostalAddress", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "email",         limit: 255
  end

  create_table "price_plans", force: :cascade do |t|
    t.integer  "months",     limit: 4
    t.integer  "price",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "regos", force: :cascade do |t|
    t.integer  "RegoLength",    limit: 4
    t.date     "StartDate"
    t.date     "EndDate"
    t.integer  "dog_id",        limit: 4, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "price_plan_id", limit: 4, null: false
  end

  add_index "regos", ["dog_id"], name: "index_regos_on_dog_id", using: :btree
  add_index "regos", ["price_plan_id"], name: "index_regos_on_price_plan_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.boolean  "admin",                  limit: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "dogs", "breeds"
  add_foreign_key "dogs", "owners"
  add_foreign_key "regos", "dogs"
  add_foreign_key "regos", "price_plans"
end
