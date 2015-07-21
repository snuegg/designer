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

ActiveRecord::Schema.define(version: 20150721141033) do

  create_table "branches", force: true do |t|
    t.string   "bname"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hds", force: true do |t|
    t.string   "hdname"
    t.integer  "branch_id"
    t.integer  "city_id"
    t.integer  "n"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scores", force: true do |t|
    t.integer  "hd_id"
    t.integer  "hd_city_id"
    t.float    "score1"
    t.float    "score2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uhscores", force: true do |t|
    t.integer  "user_id"
    t.integer  "hd_id"
    t.float    "score1"
    t.float    "score2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.integer  "hd_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
