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

ActiveRecord::Schema.define(version: 20151116074226) do

  create_table "shop_managers", force: :cascade do |t|
    t.string   "shop_manager_name"
    t.string   "shop_manager_picture"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "shoppers", force: :cascade do |t|
    t.string   "shopper_name"
    t.string   "shopper_email"
    t.string   "shopper_phone_number"
    t.integer  "shopper_longitude"
    t.integer  "shopper_latitude"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "vouchers", force: :cascade do |t|
    t.string   "voucher_owner"
    t.integer  "voucher_items"
    t.datetime "voucher_expiry_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
