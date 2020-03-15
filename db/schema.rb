# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_15_102422) do

  create_table "bookings", force: :cascade do |t|
    t.string "seat_class"
    t.decimal "journey_price"
    t.string "user_origin"
    t.string "user_destination"
    t.integer "flight_id", null: false
    t.integer "User_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["User_id"], name: "index_bookings_on_User_id"
    t.index ["flight_id"], name: "index_bookings_on_flight_id"
  end

  create_table "flight_configs", force: :cascade do |t|
    t.string "flight_origin"
    t.string "flight_destination"
    t.datetime "arrival_time"
    t.datetime "departure_time"
    t.decimal "first_class_price"
    t.decimal "business_class_price"
    t.decimal "economy_class_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "name"
    t.string "origin"
    t.string "destination"
    t.integer "flightConfig_id", null: false
    t.integer "seatMap_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flightConfig_id"], name: "index_flights_on_flightConfig_id"
    t.index ["seatMap_id"], name: "index_flights_on_seatMap_id"
  end

  create_table "pnrs", force: :cascade do |t|
    t.string "seat_class"
    t.integer "booking_id", null: false
    t.integer "flight_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_pnrs_on_booking_id"
    t.index ["flight_id"], name: "index_pnrs_on_flight_id"
  end

  create_table "seat_maps", force: :cascade do |t|
    t.integer "first_class_rows"
    t.integer "first_class_seats_in_a_row"
    t.integer "business_class_rows"
    t.integer "business_class_seats_in_a_row"
    t.integer "economy_class_rows"
    t.integer "economy_class_seats_in_a_row"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "is_admin", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "flights"
  add_foreign_key "bookings", "users", column: "User_id"
  add_foreign_key "flights", "flight_configs", column: "flightConfig_id"
  add_foreign_key "flights", "seat_maps", column: "seatMap_id"
  add_foreign_key "pnrs", "bookings"
  add_foreign_key "pnrs", "flights"
end
