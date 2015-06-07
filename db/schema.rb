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

ActiveRecord::Schema.define(version: 20150607034544) do

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
  end

  create_table "owners", force: :cascade do |t|
    t.string   "Name",          limit: 255
    t.string   "PostalAddress", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "regos", force: :cascade do |t|
    t.integer  "RegoLength", limit: 4
    t.date     "StartDate"
    t.date     "EndDate"
    t.integer  "dog_id",     limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "regos", ["dog_id"], name: "index_regos_on_dog_id", using: :btree

  add_foreign_key "regos", "dogs"
end
