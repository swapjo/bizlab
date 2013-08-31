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

ActiveRecord::Schema.define(:version => 20130831112658) do

  create_table "ad_categories", :force => true do |t|
    t.string   "name"
    t.string   "introtext"
    t.text     "description"
    t.boolean  "ispublished"
    t.string   "image"
    t.integer  "parent_category_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "ad_positions", :force => true do |t|
    t.string   "name"
    t.boolean  "ispublished"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ad_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "addresses", :force => true do |t|
    t.string   "contact_name"
    t.string   "email"
    t.string   "phone"
    t.string   "fax"
    t.string   "address_line_one"
    t.string   "address_line_two"
    t.string   "postal_code"
    t.string   "city"
    t.string   "country"
    t.string   "website"
    t.string   "google_map_code"
    t.string   "chat_code"
    t.boolean  "ispublished"
    t.integer  "user_id"
    t.string   "street"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "ads", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "ad_category_id"
    t.decimal  "price"
    t.integer  "address_id"
    t.integer  "company_id"
    t.integer  "shopping_mall_id"
    t.integer  "ad_position_id"
    t.boolean  "ispublished"
    t.boolean  "isapproved"
    t.date     "expiry_date"
    t.integer  "user_id"
    t.string   "image"
    t.integer  "ad_type_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "bookmark_ads", :force => true do |t|
    t.integer  "ad_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bookmark_business_items", :force => true do |t|
    t.integer  "business_item_id"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "bookmark_jobs", :force => true do |t|
    t.integer  "job_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "business_item_categories", :force => true do |t|
    t.string   "name"
    t.string   "introtext"
    t.text     "description"
    t.boolean  "ispublished"
    t.integer  "parent_category_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "business_items", :force => true do |t|
    t.text     "title"
    t.integer  "business_item_category_id"
    t.integer  "company_id"
    t.integer  "shopping_mall_id"
    t.integer  "address_id"
    t.boolean  "ispublished"
    t.boolean  "isapproved"
    t.date     "expiry_date"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "city_service_categories", :force => true do |t|
    t.string   "name"
    t.string   "introtext"
    t.text     "description"
    t.boolean  "ispublished"
    t.integer  "parent_category_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "city_services", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "city_service_category_id"
    t.boolean  "ispublished"
    t.string   "image"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "owner_name"
    t.integer  "user_id"
    t.string   "info"
    t.text     "description"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.boolean  "ispublished"
    t.boolean  "isapproved"
    t.string   "image"
    t.integer  "address_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "emergency_numbers", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "priority"
    t.boolean  "ispublished"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "job_categories", :force => true do |t|
    t.string   "name"
    t.string   "introtext"
    t.text     "description"
    t.boolean  "ispublished"
    t.integer  "parent_category_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "jobs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "vacancy_count"
    t.integer  "company_id"
    t.text     "qualification"
    t.integer  "job_categiory_id"
    t.text     "meeting_address"
    t.date     "expiry_date"
    t.boolean  "ispublished"
    t.boolean  "isapproved"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "mall_types", :force => true do |t|
    t.string   "name"
    t.string   "introtext"
    t.text     "description"
    t.boolean  "ispublished"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shopping_malls", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "mall_type_id"
    t.boolean  "ispublished"
    t.string   "image"
    t.integer  "address_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "role_id"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
