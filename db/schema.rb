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

ActiveRecord::Schema.define(version: 20140224194111) do

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

  create_table "quote_statuses", force: true do |t|
    t.integer  "quotes_id"
    t.string   "quote_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quote_statuses", ["quotes_id"], name: "index_quote_statuses_on_quotes_id"

  create_table "quotes", force: true do |t|
    t.decimal  "quote_amount"
    t.date     "quote_due_date"
    t.date     "artwork_due_date"
    t.string   "artwork_proof_link"
    t.datetime "created_at"
    t.text     "quote_information"
    t.string   "quote_link"
    t.integer  "customer_master_id"
  end

end
