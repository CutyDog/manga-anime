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

ActiveRecord::Schema.define(version: 20201116131407) do

  create_table "art_crafts", force: :cascade do |t|
    t.string   "title",           null: false
    t.integer  "category",        null: false
    t.text     "main_characters"
    t.integer  "genre"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["category"], name: "index_art_crafts_on_category"
    t.index ["main_characters"], name: "index_art_crafts_on_main_characters"
    t.index ["title"], name: "index_art_crafts_on_title"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id",      null: false
    t.integer  "art_craft_id", null: false
    t.text     "content",      null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["art_craft_id"], name: "index_comments_on_art_craft_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
