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

ActiveRecord::Schema.define(version: 20140208200301) do

  create_table "assistants", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.text     "address"
    t.string   "email"
    t.integer  "mobile"
    t.integer  "id_bus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assistants", ["id_bus"], name: "index_assistants_on_id_bus", using: :btree

  create_table "buses", force: true do |t|
    t.string   "name"
    t.integer  "capacity"
    t.integer  "origin_city"
    t.integer  "destiny_city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "buses", ["destiny_city"], name: "index_buses_on_destiny_city", using: :btree
  add_index "buses", ["origin_city"], name: "index_buses_on_origin_city", using: :btree

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customercategories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.text     "address"
    t.string   "email"
    t.integer  "mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drivers", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.text     "address"
    t.string   "email"
    t.integer  "mobile"
    t.integer  "id_bus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drivers", ["id_bus"], name: "index_drivers_on_id_bus", using: :btree

  create_table "employees", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.text     "address"
    t.string   "email"
    t.integer  "mobile"
    t.integer  "id_terminal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["id_terminal"], name: "index_employees_on_id_terminal", using: :btree

  create_table "seatcategories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.integer  "seat_category"
    t.integer  "customer_category"
    t.integer  "origin_city"
    t.integer  "destiny_city"
    t.decimal  "price",             precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tickets", ["customer_category"], name: "index_tickets_on_customer_category", using: :btree
  add_index "tickets", ["destiny_city"], name: "index_tickets_on_destiny_city", using: :btree
  add_index "tickets", ["origin_city"], name: "index_tickets_on_origin_city", using: :btree
  add_index "tickets", ["seat_category"], name: "index_tickets_on_seat_category", using: :btree

end
