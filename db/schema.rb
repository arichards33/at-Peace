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

ActiveRecord::Schema.define(version: 0) do

  create_table "arts", force: :cascade do |t|
    t.text "piece_name"
    t.integer "price"
    t.text "inspiration_link"
    t.text "size"
    t.text "image_file"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "art_type"
  end

  create_table "designs", force: :cascade do |t|
    t.text "room"
    t.text "project_title"
    t.text "project_time"
    t.integer "project_cost"
    t.text "inspiration_link"
    t.text "image_file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fashions", force: :cascade do |t|
    t.text "image_file"
    t.text "fashion_field"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "project_title"
  end

  create_table "inspirations", force: :cascade do |t|
    t.text "blog_title"
    t.date "date_posted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "inspo_reason"
    t.text "image_file"
    t.text "related_art"
    t.text "related_designs"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "password_digest"
    t.text "name"
  end

end
