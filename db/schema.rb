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

ActiveRecord::Schema.define(version: 20150122011310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "label"
    t.string   "street"
    t.string   "street2"
    t.string   "street3"
    t.string   "number"
    t.string   "care_of"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "has_address_type"
    t.integer  "has_address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imgs", force: true do |t|
    t.integer  "has_img_id"
    t.string   "has_img_type"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "menu_index"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "batch_description"
    t.string   "thc"
    t.string   "cbd"
    t.string   "butane"
    t.float    "donation"
    t.float    "quantity"
    t.string   "slug"
    t.string   "leafly_slug"
    t.integer  "supplier_id"
    t.integer  "product_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "donation_owed"
  end

  create_table "social_networking_profiles", force: true do |t|
    t.string   "fb_app_id"
    t.string   "fb_app_secret"
    t.string   "fb_fan_page"
    t.string   "fb_person_id"
    t.string   "twitter_id"
    t.string   "twitter_handle"
    t.string   "has_social_networking_id"
    t.string   "has_social_networking_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.boolean  "admin",                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
