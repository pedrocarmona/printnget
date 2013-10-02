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

ActiveRecord::Schema.define(version: 20130924152316) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.integer  "nif"
    t.integer  "phone"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "store_id"
  end

  add_index "companies", ["store_id"], name: "index_companies_on_store_id"

  create_table "documents", force: true do |t|
    t.string   "name"
    t.integer  "type"
    t.decimal  "size"
    t.integer  "nr_pages"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
    t.integer  "options_id"
  end

  add_index "documents", ["options_id"], name: "index_documents_on_options_id"
  add_index "documents", ["order_id"], name: "index_documents_on_order_id"

  create_table "options", force: true do |t|
    t.boolean  "color"
    t.boolean  "both_sides"
    t.integer  "nr_copies"
    t.string   "page_range"
    t.text     "observation"
    t.boolean  "portrait"
    t.integer  "pages_per_sheet"
    t.integer  "cover"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.decimal  "price"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "payment_id"
  end

  add_index "orders", ["payment_id"], name: "index_orders_on_payment_id"

  create_table "payments", force: true do |t|
    t.decimal  "amount"
    t.datetime "date"
    t.integer  "status"
    t.boolean  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "address"
    t.integer  "phone"
    t.integer  "lat"
    t.integer  "long"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "firstname",              default: "", null: false
    t.string   "lastname",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
