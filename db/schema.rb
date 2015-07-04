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

ActiveRecord::Schema.define(version: 20150704083301) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",               limit: 255, default: "", null: false
    t.string   "encrypted_password",  limit: 255, default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",  limit: 255
    t.string   "last_sign_in_ip",     limit: 255
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree

  create_table "area_tags", force: :cascade do |t|
    t.string   "name",       limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "business_tags", force: :cascade do |t|
    t.string   "name",       limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",              limit: 255,   default: "", null: false
    t.string   "kana",              limit: 255,   default: "", null: false
    t.integer  "status",            limit: 1,     default: 0,  null: false
    t.text     "corporate_culture", limit: 65535,              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intern_tags", id: false, force: :cascade do |t|
    t.integer  "tag_id",     limit: 4, default: 0, null: false
    t.integer  "intern_id",  limit: 4, default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "intern_tags", ["intern_id", "tag_id"], name: "intern_id_tag_id_unique_idx", unique: true, using: :btree

  create_table "interns", force: :cascade do |t|
    t.string   "title",           limit: 255,   default: "", null: false
    t.integer  "status",          limit: 1,     default: 0,  null: false
    t.text     "overview",        limit: 65535,              null: false
    t.integer  "company_id",      limit: 4,     default: 0,  null: false
    t.integer  "area_tag_id",     limit: 4,     default: 0,  null: false
    t.integer  "business_tag_id", limit: 4,     default: 0,  null: false
    t.integer  "type_tag_id",     limit: 4,     default: 0,  null: false
    t.integer  "salary_id",       limit: 4,     default: 0,  null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "image",           limit: 255
  end

  create_table "salaries", force: :cascade do |t|
    t.string   "show_text",  limit: 255, default: "", null: false
    t.integer  "salary",     limit: 4,   default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_tags", force: :cascade do |t|
    t.string   "name",       limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
