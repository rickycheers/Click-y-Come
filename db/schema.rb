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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120508034020) do

  create_table "dishes", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "image"
    t.integer  "type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "menu_dishes", :force => true do |t|
    t.integer  "menu_id"
    t.integer  "dish_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "offices", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "references"
    t.string   "geo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.integer  "menu_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "fb_id"
    t.string   "fb_access_token"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "personal_email"
    t.string   "job_email"
    t.integer  "cel_phone"
    t.string   "office_id"
    t.boolean  "send_to_personal"
    t.boolean  "send_to_job"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "users", ["fb_id"], :name => "index_users_on_fb_id", :unique => true
  add_index "users", ["job_email"], :name => "index_users_on_job_email", :unique => true
  add_index "users", ["personal_email"], :name => "index_users_on_personal_email", :unique => true

end
