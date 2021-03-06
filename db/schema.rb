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

ActiveRecord::Schema.define(version: 20150203200231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "location"
    t.string   "reviews"
    t.string   "teetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "address1"
    t.string   "city"
    t.string   "country"
    t.string   "name"
    t.string   "phone"
    t.string   "state"
    t.string   "TimeZone"
    t.string   "ZipCode"
  end

  create_table "scorecards", force: :cascade do |t|
    t.string   "date"
    t.string   "courseplayed"
    t.integer  "hole1"
    t.integer  "hole2"
    t.integer  "hole3"
    t.integer  "hole4"
    t.integer  "hole5"
    t.integer  "hole6"
    t.integer  "hole7"
    t.integer  "hole8"
    t.integer  "hole9"
    t.integer  "hole10"
    t.integer  "hole11"
    t.integer  "hole12"
    t.integer  "hole13"
    t.integer  "hole14"
    t.integer  "hole15"
    t.integer  "hole16"
    t.integer  "hole17"
    t.integer  "hole18"
    t.integer  "total"
    t.integer  "par1"
    t.integer  "par2"
    t.integer  "par3"
    t.integer  "par4"
    t.integer  "par5"
    t.integer  "par6"
    t.integer  "par7"
    t.integer  "par8"
    t.integer  "par9"
    t.integer  "par10"
    t.integer  "par11"
    t.integer  "par12"
    t.integer  "par13"
    t.integer  "par14"
    t.integer  "par15"
    t.integer  "par16"
    t.integer  "par17"
    t.integer  "par18"
    t.integer  "TotalPar"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "last_name"
  end

end
