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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150519175223) do
=======
ActiveRecord::Schema.define(version: 20150519180011) do
>>>>>>> 6003b1c8d901ef75c6ceb3d77d91abf90806af5b

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "doors", force: :cascade do |t|
    t.boolean "unlocked"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "x_coordinate"
    t.integer "y_coordinate"
    t.boolean "north"
    t.boolean "south"
    t.boolean "east"
    t.boolean "west"
=======
  create_table "doors_keys", force: :cascade do |t|
    t.integer "key_id"
    t.integer "door_id"
  end

  create_table "doors_rooms", force: :cascade do |t|
    t.integer "door_id"
    t.integer "room_id"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.boolean  "usable?"
    t.boolean  "weapon?"
    t.boolean  "in_backpack?"
    t.integer  "room_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "items_rooms", force: :cascade do |t|
    t.integer "item_id"
    t.integer "room_id"
  end

  create_table "keys", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "door_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "in_backpack?"
    t.boolean  "used?"
  end

  create_table "keys_rooms", force: :cascade do |t|
    t.integer "key_id"
    t.integer "room_id"
  end

  create_table "monsters_rooms", force: :cascade do |t|
    t.integer "monster_id"
    t.integer "room_id"
>>>>>>> 6003b1c8d901ef75c6ceb3d77d91abf90806af5b
  end

end