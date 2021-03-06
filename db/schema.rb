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

ActiveRecord::Schema.define(version: 20140410222357) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "date"
    t.decimal  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bills", ["user_id"], name: "index_bills_on_user_id"

  create_table "comments", force: true do |t|
    t.text     "content",          null: false
    t.integer  "commentable_id",   null: false
    t.string   "commentable_type", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "daniels", force: true do |t|
    t.string   "teste"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testes", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",                                null: false
    t.string   "email",                               null: false
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gender"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
