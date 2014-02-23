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

ActiveRecord::Schema.define(version: 20140223193840) do

  create_table "assistants", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.text     "address"
    t.string   "email"
    t.integer  "mobile"
    t.decimal  "salary",     precision: 10, scale: 0
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
    t.decimal  "salary",     precision: 10, scale: 0
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
    t.decimal  "salary",      precision: 10, scale: 0
    t.integer  "id_terminal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["id_terminal"], name: "index_employees_on_id_terminal", using: :btree

  create_table "itineraries", force: true do |t|
    t.string   "info"
    t.time     "departure_time"
    t.time     "arrival_time"
    t.integer  "id_bus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itineraries", ["id_bus"], name: "index_itineraries_on_id_bus", using: :btree

  create_table "packages", force: true do |t|
    t.decimal  "weight",           precision: 10, scale: 0
    t.integer  "id_employee"
    t.integer  "origin_customer"
    t.integer  "destiny_customer"
    t.integer  "id_itinerary"
    t.decimal  "price",            precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "packages", ["destiny_customer"], name: "index_packages_on_destiny_customer", using: :btree
  add_index "packages", ["id_employee"], name: "index_packages_on_id_employee", using: :btree
  add_index "packages", ["id_itinerary"], name: "index_packages_on_id_itinerary", using: :btree
  add_index "packages", ["origin_customer"], name: "index_packages_on_origin_customer", using: :btree

  create_table "seatcategories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ticketbills", force: true do |t|
    t.integer  "id_ticket"
    t.integer  "id_customer"
    t.integer  "id_employee"
    t.integer  "itinerary_id"
    t.date     "departure_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ticketbills", ["id_customer"], name: "index_ticketbills_on_id_customer", using: :btree
  add_index "ticketbills", ["id_employee"], name: "index_ticketbills_on_id_employee", using: :btree
  add_index "ticketbills", ["id_ticket"], name: "index_ticketbills_on_id_ticket", using: :btree
  add_index "ticketbills", ["itinerary_id"], name: "index_ticketbills_on_itinerary_id", using: :btree

  create_table "tickets", force: true do |t|
    t.string   "info"
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

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "voyages", force: true do |t|
    t.date     "v_date"
    t.integer  "id_itinerary"
    t.integer  "seats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "voyages", ["id_itinerary"], name: "index_voyages_on_id_itinerary", using: :btree

end
