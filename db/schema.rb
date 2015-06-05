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

ActiveRecord::Schema.define(version: 20150605161224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guesses", force: :cascade do |t|
    t.string   "titleguess"
    t.integer  "moviequote_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
  end

  add_index "guesses", ["moviequote_id"], name: "index_guesses_on_moviequote_id", using: :btree
  add_index "guesses", ["user_id"], name: "index_guesses_on_user_id", using: :btree

  create_table "moviequotes", force: :cascade do |t|
    t.string   "quote"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "stars"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "guesses", "moviequotes"
  add_foreign_key "guesses", "users"
end
