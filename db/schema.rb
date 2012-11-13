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

ActiveRecord::Schema.define(:version => 20121112105719) do

  create_table "addresses", :force => true do |t|
    t.integer  "person_id"
    t.integer  "city_id"
    t.string   "category"
    t.string   "level1"
    t.string   "part1"
    t.string   "level2"
    t.string   "part2"
    t.string   "level3"
    t.string   "part3"
    t.string   "phones"
    t.string   "email"
    t.string   "mobiles"
    t.string   "description"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "postal_code"
    t.string   "unit_name"
    t.string   "building_name"
    t.string   "address_no"
    t.string   "district"
  end

  add_index "addresses", ["city_id"], :name => "index_addresses_on_city_id"
  add_index "addresses", ["person_id"], :name => "index_addresses_on_person_id"

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "province_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "cities", ["province_id"], :name => "index_cities_on_province_id"

  create_table "contract_guarantors", :id => false, :force => true do |t|
    t.integer "contract_id"
    t.integer "guarantor_id"
  end

  add_index "contract_guarantors", ["contract_id", "guarantor_id"], :name => "index_contract_guarantors_on_contract_id_and_guarantor_id"

  create_table "contracts", :force => true do |t|
    t.integer  "correspondent_id"
    t.string   "idno"
    t.string   "category"
    t.date     "due_date"
    t.integer  "total_amount"
    t.integer  "property_id"
    t.date     "sign_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "correspondents", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "legal_type"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "customers", ["person_id"], :name => "index_customers_on_person_id"

  create_table "guarantees", :force => true do |t|
    t.integer  "contract_id"
    t.integer  "amount"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "guarantors", :force => true do |t|
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "guarantors", ["person_id"], :name => "index_guarantors_on_person_id"

  create_table "installments", :force => true do |t|
    t.integer  "amount"
    t.date     "due_date"
    t.integer  "kase_id"
    t.boolean  "paid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "kases", :force => true do |t|
    t.date     "start_date"
    t.date     "finish_date"
    t.integer  "customer_id"
    t.integer  "contract_id"
    t.integer  "user_id"
    t.string   "status"
    t.integer  "idno"
    t.date     "receipt_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "kases", ["contract_id"], :name => "index_kases_on_contract_id"
  add_index "kases", ["customer_id"], :name => "index_kases_on_customer_id"
  add_index "kases", ["user_id"], :name => "index_kases_on_user_id"

  create_table "payments", :force => true do |t|
    t.integer  "kase_id"
    t.integer  "amount"
    t.date     "payment_date"
    t.string   "origin_account"
    t.string   "origin_bank"
    t.string   "benef_account"
    t.string   "payment_method"
    t.string   "idno"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "payments", ["kase_id"], :name => "index_payments_on_kase_id"

  create_table "persons", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "identity_no"
    t.string   "nationalno"
    t.date     "birthdate"
    t.string   "identity_serial"
    t.string   "fathername"
    t.date     "identity_issue_date"
    t.string   "identity_issue_city"
    t.string   "gender"
    t.string   "marital_status"
    t.string   "title"
    t.string   "job_title"
    t.string   "job_position"
    t.string   "job_company"
    t.string   "job_industry"
    t.string   "education"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "properties", :force => true do |t|
    t.string   "idno"
    t.string   "category"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "provinces", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

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
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
