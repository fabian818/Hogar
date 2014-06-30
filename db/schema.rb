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

ActiveRecord::Schema.define(version: 20140630022400) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "valoration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "debts", force: true do |t|
    t.integer  "gain_id"
    t.integer  "person_id"
    t.float    "amount"
    t.date     "date_to_pay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", force: true do |t|
    t.integer  "expense_type"
    t.integer  "user_id"
    t.float    "total"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "food_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.integer  "product_id"
    t.integer  "food_type_id"
    t.string   "measurement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gains", force: true do |t|
    t.integer  "user_id"
    t.float    "total"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "history_products", force: true do |t|
    t.integer  "real_product_id"
    t.date     "date"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "history_services", force: true do |t|
    t.integer  "service_id"
    t.integer  "expense_id"
    t.float    "amount"
    t.integer  "month"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans", force: true do |t|
    t.integer  "expense_id"
    t.integer  "person_id"
    t.float    "amount"
    t.date     "date_to_pay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pays", force: true do |t|
    t.integer  "debt_id"
    t.date     "date"
    t.integer  "expense_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "product_type_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: true do |t|
    t.integer  "hisory_product_id"
    t.integer  "expense_id"
    t.integer  "number"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "real_products", force: true do |t|
    t.integer  "product_id"
    t.integer  "company_id"
    t.float    "actual_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.integer  "service_type_id"
    t.string   "name"
    t.text     "description"
    t.integer  "valoration"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supports", force: true do |t|
    t.integer  "user_id"
    t.integer  "gain_id"
    t.float    "amount"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
