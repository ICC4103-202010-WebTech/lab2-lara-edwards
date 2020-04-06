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

ActiveRecord::Schema.define(version: 2020_04_06_060912) do

  create_table "costumers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "address"
    t.string "password"
    t.string "email"
    t.decimal "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.decimal "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "start_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_venue_id"
    t.index ["event_venue_id"], name: "index_events_on_event_venue_id"
  end

  create_table "ticket_orders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ticket_type_id"
    t.integer "costumer_id"
    t.index ["costumer_id"], name: "index_ticket_orders_on_costumer_id"
    t.index ["ticket_type_id"], name: "index_ticket_orders_on_ticket_type_id"
  end

  create_table "ticket_types", force: :cascade do |t|
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
    t.index ["event_id"], name: "index_ticket_types_on_event_id"
  end

  add_foreign_key "events", "event_venues"
  add_foreign_key "ticket_orders", "costumers"
  add_foreign_key "ticket_orders", "ticket_types"
  add_foreign_key "ticket_types", "events"
end
