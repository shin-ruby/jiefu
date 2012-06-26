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

ActiveRecord::Schema.define(:version => 20120330080804) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "articles", :force => true do |t|
    t.string   "en_name"
    t.string   "zh_cn_name"
    t.text     "en_body"
    t.text     "zh_cn_body"
    t.integer  "position",    :default => 300
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "image"
    t.integer  "category_id"
  end

  create_table "assets", :force => true do |t|
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "en_name"
    t.string   "zh_cn_name"
    t.integer  "parent_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "position",   :default => 300
    t.string   "type"
    t.string   "image"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
  end

  create_table "faqs", :force => true do |t|
    t.string   "en_name"
    t.string   "zh_cn_name"
    t.text     "en_body"
    t.text     "zh_cn_body"
    t.integer  "position",    :default => 300
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "category_id"
  end

  create_table "feedbacks", :force => true do |t|
    t.string   "name"
    t.string   "comany"
    t.string   "department"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "jiefu_xinghao"
    t.string   "jiefu_pihao"
    t.string   "company_xinghao"
    t.string   "company_orderno"
    t.text     "description"
    t.string   "feedback_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "product_name"
  end

  create_table "products", :force => true do |t|
    t.string   "en_name"
    t.text     "en_body"
    t.string   "zh_cn_name"
    t.text     "zh_cn_body"
    t.text     "en_whitepaper"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.boolean  "is_new"
    t.integer  "category_id"
    t.text     "zh_cn_whitepaper"
    t.boolean  "featured"
    t.string   "image"
    t.integer  "position"
    t.float    "length"
    t.float    "width"
    t.float    "height"
    t.string   "rated_power"
    t.string   "rated_impedance"
    t.string   "fo"
    t.string   "response_rate"
    t.string   "frequency_response_range"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                              :default => "", :null => false
    t.string   "encrypted_password",                  :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                      :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                                         :null => false
    t.datetime "updated_at",                                                         :null => false
    t.string   "name"
    t.string   "phone"
    t.string   "company_name"
    t.string   "address"
    t.string   "gongshan"
    t.string   "suiwu"
    t.string   "zuzhijigou"
    t.string   "co_operation"
    t.string   "producing_capacity"
    t.string   "max_capacity"
    t.string   "product_catalog_image"
    t.string   "business_permit_image"
    t.string   "tax_registration_certificate_image"
    t.string   "organization_code_certificate_image"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
