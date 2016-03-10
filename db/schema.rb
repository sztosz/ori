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

ActiveRecord::Schema.define(version: 20160310224028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bodies", force: :cascade do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bodies", ["brand_id"], name: "index_bodies_on_brand_id", using: :btree

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dumps", force: :cascade do |t|
    t.integer  "ecu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "hw"
    t.string   "sw"
  end

  add_index "dumps", ["ecu_id"], name: "index_dumps_on_ecu_id", using: :btree

  create_table "ecus", force: :cascade do |t|
    t.string   "name"
    t.integer  "engine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ecus", ["engine_id"], name: "index_ecus_on_engine_id", using: :btree

  create_table "engines", force: :cascade do |t|
    t.string   "name"
    t.integer  "body_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "engines", ["body_id"], name: "index_engines_on_body_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bodies", "brands"
  add_foreign_key "dumps", "ecus"
  add_foreign_key "ecus", "engines"
  add_foreign_key "engines", "bodies"
end
