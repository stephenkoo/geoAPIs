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

ActiveRecord::Schema.define(version: 20160602034211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.string   "street_address"
    t.string   "building_number"
    t.string   "suburb"
    t.string   "state"
    t.string   "post_code"
    t.json     "listing_pictures"
    t.string   "listing_title"
    t.string   "listing_description"
    t.string   "place_type"
    t.string   "room_type"
    t.boolean  "room_furnished"
    t.integer  "housemates_qty"
    t.integer  "bedroom_qty"
    t.integer  "bathroom_qty"
    t.boolean  "bathroom_shared"
    t.string   "parking"
    t.string   "place_features"
    t.integer  "price_weekly"
    t.integer  "bond_price"
    t.boolean  "bills_included"
    t.integer  "bills_weekly"
    t.string   "stay_length"
    t.integer  "renter_min"
    t.integer  "renter_max"
    t.string   "renter_gender"
    t.string   "renter_attributes"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
  end

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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_picture"
    t.string   "gender"
    t.string   "work"
    t.string   "phone"
    t.string   "nationality"
    t.string   "languages"
    t.string   "hobbies"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
