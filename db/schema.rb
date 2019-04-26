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

ActiveRecord::Schema.define(version: 20190426043637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_billings", force: :cascade do |t|
    t.integer "order_billingscol"
    t.decimal "billing_amount"
    t.string "billing_method"
    t.string "billing_status"
    t.decimal "discount"
    t.decimal "tax"
    t.text "note"
  end

  create_table "restaurant_branches", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "brand_logo_url"
    t.string "phone"
    t.string "email"
    t.integer "restaurant_id"
    t.integer "location_id"
    t.string "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "restaurant_floor_plans", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "plan_type"
    t.integer "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "restaurant_locations", force: :cascade do |t|
    t.integer "restaurant_branch_id"
    t.text "address_line1"
    t.text "address_line2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "postal_code"
    t.integer "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "restaurant_menus", force: :cascade do |t|
    t.integer "restaurant_id"
    t.string "dish_name"
    t.string "dish_type"
    t.text "description"
    t.decimal "dish_price"
    t.string "status"
    t.text "image"
  end

  create_table "restaurant_musics", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "restaurant_id"
    t.string "music_type"
    t.integer "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "restaurant_photos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "url"
    t.integer "restaurant_id"
    t.integer "photo_type"
    t.integer "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "restaurant_table_ratings", force: :cascade do |t|
    t.integer "from_user_id"
    t.text "review"
    t.integer "table_id"
    t.integer "rating"
    t.integer "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "restaurant_tables", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "max_sitting"
    t.integer "restaurant_id"
    t.integer "booking_status"
    t.integer "booking_id"
    t.integer "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "restaurants", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "brand_logo_url"
    t.text "description"
    t.string "owner_name"
    t.string "owner_contact_no"
    t.text "owner_address"
    t.integer "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "table_bookings", force: :cascade do |t|
    t.string "qr_code"
    t.date "booking_date"
    t.time "booking_time_from"
    t.time "booking_time_to"
    t.integer "table_id"
    t.integer "booking_by"
    t.integer "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "table_ocassions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "table_id"
    t.string "ocassion_type"
    t.integer "booking_by"
    t.integer "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "table_slots", force: :cascade do |t|
    t.integer "table_id"
    t.integer "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "table_videos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "url"
    t.integer "video_type"
    t.integer "table_id"
    t.integer "status"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

  create_table "user_orders", force: :cascade do |t|
    t.string "order_number"
    t.integer "table_booking_id"
    t.integer "user_id"
    t.decimal "order_amount", precision: 8, scale: 2
    t.date "order_date"
  end

  create_table "users", force: :cascade do |t|
    t.string "uuid"
    t.string "email"
    t.string "phone"
    t.string "name"
    t.integer "status"
    t.integer "user_type"
    t.text "photo"
    t.string "gender"
    t.text "fcm_token"
    t.string "tc_accept"
    t.integer "creator_id"
    t.integer "modifier_id"
    t.datetime "create_time"
    t.datetime "modified_time"
  end

end
