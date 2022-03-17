# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_16_165628) do

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "show_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "screen_id"
    t.string "seat"
    t.index ["screen_id"], name: "index_bookings_on_screen_id"
    t.index ["show_id"], name: "index_bookings_on_show_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "m_name"
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "screens", force: :cascade do |t|
    t.string "s_name"
    t.string "s_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "theatre_id"
    t.index ["theatre_id"], name: "index_screens_on_theatre_id"
  end

  create_table "shows", force: :cascade do |t|
    t.time "st"
    t.time "ed"
    t.integer "money"
    t.string "av_seats", default: "--- []\n"
    t.string "oc_seats", default: "--- []\n"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "theatre_id"
    t.integer "screen_id"
    t.integer "movie_id"
    t.index ["movie_id"], name: "index_shows_on_movie_id"
    t.index ["screen_id"], name: "index_shows_on_screen_id"
    t.index ["theatre_id"], name: "index_shows_on_theatre_id"
  end

  create_table "theatres", force: :cascade do |t|
    t.string "t_name"
    t.string "t_address"
    t.integer "t_contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "contact"
    t.string "full_name"
    t.date "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "screens"
  add_foreign_key "bookings", "shows"
  add_foreign_key "bookings", "users"
  add_foreign_key "screens", "theatres"
  add_foreign_key "shows", "movies"
  add_foreign_key "shows", "screens"
  add_foreign_key "shows", "theatres"
end
