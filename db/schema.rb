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

ActiveRecord::Schema.define(version: 20151125133037) do

  create_table "chats", force: :cascade do |t|
    t.text     "name"
    t.text     "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "chat_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.integer  "Chat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "firstName"
    t.text     "lastName"
    t.text     "username"
    t.text     "password_hash"
    t.text     "email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
