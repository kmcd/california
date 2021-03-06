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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110617171517) do

  create_table "checkins", :force => true do |t|
    t.datetime "arrival"
    t.integer  "reservation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "room_id"
  end

  create_table "guests", :force => true do |t|
    t.string   "name"
    t.string   "passport"
    t.text     "contact_details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "checkin_id"
    t.integer  "occupancy_id"
  end

  create_table "hotels", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "admin_password"
  end

  create_table "images", :force => true do |t|
    t.string   "filename"
    t.string   "type"
    t.binary   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "occupancies", :force => true do |t|
    t.datetime "arrival"
    t.datetime "departure"
    t.integer  "reservation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "room_id"
  end

  create_table "reservations", :force => true do |t|
    t.datetime "arrival"
    t.datetime "departure"
    t.integer  "room_id"
    t.integer  "guest_id"
    t.integer  "occupants"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", :force => true do |t|
    t.string   "number"
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

end
