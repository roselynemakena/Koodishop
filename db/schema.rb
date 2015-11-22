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

ActiveRecord::Schema.define(version: 20151122145828) do

  create_table "carts", force: :cascade do |t|
    t.string   "cart_itemscart_total_price"
    t.string   "cart_item_count"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "koodishop_admins", force: :cascade do |t|
    t.string   "koodishop_admin_name"
    t.string   "koodishop_admin_picture"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "email",                   default: "", null: false
    t.string   "encrypted_password",      default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "koodishop_admins", ["email"], name: "index_koodishop_admins_on_email", unique: true
  add_index "koodishop_admins", ["reset_password_token"], name: "index_koodishop_admins_on_reset_password_token", unique: true

  create_table "product_names", force: :cascade do |t|
    t.string   "product_description"
    t.string   "product_price"
    t.string   "product_deal_price"
    t.string   "product_image"
    t.string   "product_expiry_date"
    t.string   "product_category"
    t.string   "product_quantity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.string   "product_description"
    t.string   "product_price"
    t.string   "product_deal_price"
    t.string   "product_image"
    t.string   "product_expiry_date"
    t.string   "product_category"
    t.string   "product_quantity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

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

  create_table "shops", force: :cascade do |t|
    t.string   "shop_name"
    t.string   "shop_logo"
    t.string   "shop_location"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vouchers", force: :cascade do |t|
    t.string   "voucher_owner"
    t.integer  "voucher_items"
    t.datetime "voucher_expiry_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
