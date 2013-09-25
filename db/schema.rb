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

ActiveRecord::Schema.define(version: 20130924230816) do

  create_table "combinations", force: true do |t|
    t.integer  "shirt_top_id"
    t.integer  "pant_id"
    t.integer  "shoe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "name"
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "post_id"
  end

  create_table "dress_codes", force: true do |t|
    t.string "kind"
  end

  create_table "outfits", force: true do |t|
    t.integer "shirt_top_id"
    t.integer "pant_id"
    t.integer "shoe_id"
    t.string  "date"
  end

  create_table "pants", force: true do |t|
    t.string "name"
    t.string "product_id"
    t.string "color"
    t.string "size"
    t.string "image_url"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "body"
    t.string   "blog_post_pics_file_name"
    t.string   "blog_post_pics_content_type"
    t.integer  "blog_post_pics_file_size"
    t.datetime "blog_post_pics_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shirt_tops", force: true do |t|
    t.string  "name"
    t.string  "product_id"
    t.string  "color"
    t.string  "size"
    t.string  "image_url"
    t.integer "outfit_id"
  end

  create_table "shoes", force: true do |t|
    t.string "name"
    t.string "product_id"
    t.string "color"
    t.string "size"
    t.string "image_url"
  end

  create_table "users", force: true do |t|
    t.string  "name"
    t.string  "email"
    t.integer "height"
    t.integer "weight"
    t.string  "body_type"
    t.string  "password_digest"
  end

end
