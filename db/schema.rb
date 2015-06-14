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

ActiveRecord::Schema.define(version: 20150613173247) do

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
    t.text     "overview",          limit: 65535,              null: false
    t.text     "corporate_culture", limit: 65535,              null: false
    t.integer  "area_tag_id",       limit: 1,     default: 0,  null: false
    t.integer  "business_tag_id",   limit: 1,     default: 0,  null: false
    t.integer  "type_tag_id",       limit: 1,     default: 0,  null: false
    t.integer  "salary_id",         limit: 1,     default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["area_tag_id"], name: "area_tag_id_idx", using: :btree
  add_index "companies", ["business_tag_id"], name: "business_tag_id_idx", using: :btree
  add_index "companies", ["name", "status"], name: "name_and_status_idx", using: :btree
  add_index "companies", ["salary_id"], name: "salary_id_idx", using: :btree
  add_index "companies", ["status", "created_at"], name: "status_and_created_at_idx", using: :btree
  add_index "companies", ["type_tag_id"], name: "type_tag_id_idx", using: :btree

  create_table "company_tags", id: false, force: :cascade do |t|
    t.integer  "tag_id",     limit: 4, default: 0, null: false
    t.integer  "company_id", limit: 4, default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_tags", ["company_id", "tag_id"], name: "company_id_tag_id_unique_idx", unique: true, using: :btree

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