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

ActiveRecord::Schema.define(version: 20140219030847) do

  create_table "quotes", force: true do |t|
    t.integer  "customer_master_id"
    t.integer  "prospect_id"
    t.text     "project_info"
    t.decimal  "quote_amount"
    t.date     "quote_due_date"
    t.date     "quote_projected_close_date"
    t.date     "artwork_due_date"
    t.string   "artwork_proof_link"
    t.string   "quote_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
