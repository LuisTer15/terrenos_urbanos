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

ActiveRecord::Schema.define(version: 2021_04_25_005142) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "image_path"
  end

  create_table "leads", force: :cascade do |t|
    t.string "name_lead"
    t.string "email_lead"
    t.string "phonenumber_lead"
    t.text "message_lead"
    t.string "property_code_lead"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lots", force: :cascade do |t|
    t.integer "code"
    t.string "location"
    t.string "address"
    t.decimal "area_land"
    t.decimal "area_build"
    t.decimal "front_dim"
    t.integer "floors_build"
    t.string "use_build"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "left_dim"
    t.decimal "right_dim"
    t.decimal "back_dim"
    t.string "ref_catastral"
    t.string "pot_polygon"
    t.string "pot_treatment"
    t.string "pot_treatment_level"
    t.string "pot_tipology"
    t.decimal "pot_front_align_lb_lc"
    t.decimal "pot_left_align_lb_lc"
    t.decimal "pot_right_align_lb_lc"
    t.decimal "pot_back_align_lb_lc"
    t.string "pot_road_name"
    t.decimal "base_density"
    t.integer "base_floors"
    t.decimal "max_density"
    t.integer "max_floors"
    t.string "price", limit: 8
    t.decimal "area_occupation"
  end

  create_table "properties", force: :cascade do |t|
    t.integer "code"
    t.integer "price"
    t.text "location"
    t.text "address"
    t.integer "area_land"
    t.integer "area_build"
    t.integer "room_count"
    t.integer "bathroom_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "property_type"
    t.integer "stratus"
    t.string "description"
    t.string "property_status"
    t.boolean "active", default: false, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 100
    t.string "password_digest"
    t.string "name", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
