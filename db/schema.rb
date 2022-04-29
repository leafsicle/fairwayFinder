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

ActiveRecord::Schema[7.0].define(version: 2022_04_29_203246) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.integer "hole_count"
    t.boolean "membership"
    t.string "phone"
    t.string "website_url"
    t.integer "hour_open"
    t.integer "hour_close"
    t.boolean "driving_range"
    t.boolean "putting_green"
    t.boolean "chipping_area"
    t.boolean "practice_bunker"
    t.boolean "riding_cart"
    t.boolean "push_cart"
    t.boolean "pro_shop"
    t.boolean "club_rental"
    t.boolean "caddie_services"
    t.boolean "lessons"
    t.boolean "locker_room_onsite"
    t.boolean "shower_onsite"
    t.boolean "lodging_onsite"
    t.boolean "clubfitting"
    t.boolean "punched_greens"
    t.boolean "sanded_greens"
    t.string "street_address"
    t.string "address_locality"
    t.string "address_region"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.integer "user_type_id"
    t.integer "home_course_id"
    t.float "handicap"
    t.string "street_address"
    t.string "address_locatity"
    t.string "address_region"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
