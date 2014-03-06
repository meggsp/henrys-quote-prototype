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

ActiveRecord::Schema.define(version: 20140305010649) do

  create_table "customer", force: true do |t|
    t.integer "customer_master_id"
    t.text    "company_name"
    t.string  "primary_contact_name"
    t.integer "primary_contact_phone"
    t.string  "primary_contact_email"
    t.text    "primary_contact_address_city_state_zip"
    t.string  "billing_contact_name"
    t.integer "billing_contact_phone"
    t.string  "billing_contact_email"
    t.text    "billing_contact_address_city_state_zip"
    t.string  "install_contact_name"
    t.string  "company_division_sub"
    t.boolean "customer_state"
  end

  create_table "customers", force: true do |t|
    t.string   "company_name"
    t.string   "primary_contact_name"
    t.integer  "primary_contact_phone"
    t.string   "primary_contact_email"
    t.text     "primary_contact_address_city_state_zip"
    t.string   "install_contact_name"
    t.string   "company_division_sub"
    t.string   "customer_state"
    t.string   "billing_contact_name"
    t.integer  "billing_contact_phone"
    t.string   "billing_contact_email"
    t.text     "billing_contact_address_city_state_zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                  default: "", null: false
    t.string   "encrypted_password",                     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "customers", ["confirmation_token"], name: "index_customers_on_confirmation_token", unique: true
  add_index "customers", ["email"], name: "index_customers_on_email", unique: true
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true

  create_table "quotes", force: true do |t|
    t.integer  "quote_id"
    t.integer  "quote_master_id"
    t.text     "quote_information"
    t.decimal  "quote_amount"
    t.date     "quote_due_date"
    t.date     "artwork_due_date"
    t.string   "artwork_proof_link"
    t.text     "production_notes"
    t.string   "quote_status"
    t.string   "quote_link"
    t.date     "order_ship_date"
    t.date     "order_installation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
  end

end
