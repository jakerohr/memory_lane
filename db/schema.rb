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

ActiveRecord::Schema.define(version: 20150507165431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pages", force: :cascade do |t|
    t.integer  "page_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "pages", ["user_id"], name: "index_pages_on_user_id", using: :btree

  create_table "pages_partials", force: :cascade do |t|
    t.integer  "page_id"
    t.integer  "partial_id"
    t.integer  "partial_order"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "pages_partials", ["page_id"], name: "index_pages_partials_on_page_id", using: :btree
  add_index "pages_partials", ["partial_id"], name: "index_pages_partials_on_partial_id", using: :btree

  create_table "partials", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "path"
    t.string   "name"
    t.string   "item1"
    t.string   "item2"
    t.string   "item3"
    t.string   "item4"
    t.string   "item5"
    t.string   "item6"
    t.string   "item7"
    t.string   "item8"
    t.string   "item9"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "partials", ["user_id"], name: "index_partials_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "pages", "users"
  add_foreign_key "pages_partials", "pages"
  add_foreign_key "pages_partials", "partials"
  add_foreign_key "partials", "users"
end
