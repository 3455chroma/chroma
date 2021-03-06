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

ActiveRecord::Schema.define(version: 20180125020050) do

  create_table "genrekeywords", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "yoyaku_id"
    t.string "keyword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "keyword_amazon"
    t.string "keyword_rakuten"
    t.string "keyword_tsutaya"
    t.string "keyword_honyaclub"
    t.string "keyword_routike"
    t.string "keyword_yahoo"
    t.string "keyword_seven"
  end

  create_table "mtourokus", force: :cascade do |t|
    t.text "memo"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "stourokus", force: :cascade do |t|
    t.integer "genre_id"
    t.text "name"
    t.text "hito"
    t.date "hatsubaiday"
    t.string "tenpo"
    t.integer "money"
    t.text "tokuten"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "cd"
    t.boolean "dvd"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "imagename"
    t.string "imagetype"
    t.binary "imagedate"
    t.string "account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yoyakus", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
