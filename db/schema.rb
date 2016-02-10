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

ActiveRecord::Schema.define(version: 20160210101242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boats", force: :cascade do |t|
    t.string   "name"
    t.string   "boat_type"
    t.integer  "capacity"
    t.string   "drive"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end



  create_table "offers", force: :cascade do |t|
    t.integer  "boat_id"
    t.integer  "price"
    t.date     "period_start"
    t.date     "period_end"
    t.string   "location"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "offers", ["boat_id"], name: "index_offers_on_boat_id", using: :btree

  add_foreign_key "offers", "boats"

  create_table "reservations", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "number_of_persons"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
