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

ActiveRecord::Schema.define(version: 20200425201231) do

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
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 100
    t.string "password_digest"
    t.string "name", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
