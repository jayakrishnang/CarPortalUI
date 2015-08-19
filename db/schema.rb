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

ActiveRecord::Schema.define(version: 20150819102941) do

  create_table "body_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string   "status",           limit: 255
    t.string   "message",          limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "car_id",           limit: 4
    t.integer  "user_id",          limit: 4
    t.integer  "specification_id", limit: 4
  end

  add_index "bookings", ["car_id"], name: "index_bookings_on_car_id", using: :btree
  add_index "bookings", ["specification_id"], name: "index_bookings_on_specification_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "brands", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "body_type_id",     limit: 4
    t.integer  "brand_id",         limit: 4
    t.integer  "specification_id", limit: 4
  end

  add_index "cars", ["body_type_id"], name: "index_cars_on_body_type_id", using: :btree
  add_index "cars", ["brand_id"], name: "index_cars_on_brand_id", using: :btree
  add_index "cars", ["specification_id"], name: "index_cars_on_specification_id", using: :btree

  create_table "deliveries", force: :cascade do |t|
    t.integer  "count",            limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "specification_id", limit: 4
    t.integer  "car_id",           limit: 4
  end

  add_index "deliveries", ["car_id"], name: "index_deliveries_on_car_id", using: :btree
  add_index "deliveries", ["specification_id"], name: "index_deliveries_on_specification_id", using: :btree

  create_table "fuel_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title",            limit: 255
    t.text     "comments",         limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "user_id",          limit: 4
    t.integer  "car_id",           limit: 4
    t.integer  "specification_id", limit: 4
  end

  add_index "reviews", ["car_id"], name: "index_reviews_on_car_id", using: :btree
  add_index "reviews", ["specification_id"], name: "index_reviews_on_specification_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "specifications", force: :cascade do |t|
    t.string   "version_name",         limit: 255
    t.float    "engine_power",         limit: 24
    t.float    "displacement",         limit: 24
    t.float    "mileage",              limit: 24
    t.boolean  "is_available"
    t.boolean  "air_bag"
    t.boolean  "abs"
    t.string   "color",                limit: 255
    t.integer  "seating_capacity",     limit: 4
    t.boolean  "air_conditioner"
    t.boolean  "central_lock"
    t.boolean  "power_window"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.float    "price",                limit: 24
    t.integer  "fuel_type_id",         limit: 4
    t.integer  "transmission_type_id", limit: 4
  end

  add_index "specifications", ["fuel_type_id"], name: "index_specifications_on_fuel_type_id", using: :btree
  add_index "specifications", ["transmission_type_id"], name: "index_specifications_on_transmission_type_id", using: :btree

  create_table "transmission_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,     default: 0,  null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "username",               limit: 255
    t.text     "address",                limit: 65535
    t.integer  "zipcode",                limit: 4
    t.boolean  "is_active"
    t.integer  "role_id",                limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  add_foreign_key "bookings", "cars"
  add_foreign_key "bookings", "specifications"
  add_foreign_key "bookings", "users"
  add_foreign_key "cars", "body_types"
  add_foreign_key "cars", "brands"
  add_foreign_key "cars", "specifications"
  add_foreign_key "deliveries", "cars"
  add_foreign_key "deliveries", "specifications"
  add_foreign_key "reviews", "cars"
  add_foreign_key "reviews", "specifications"
  add_foreign_key "reviews", "users"
  add_foreign_key "specifications", "fuel_types"
  add_foreign_key "specifications", "transmission_types"
  add_foreign_key "users", "roles"
end
