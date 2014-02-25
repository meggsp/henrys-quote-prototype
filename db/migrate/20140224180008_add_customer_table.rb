class AddCustomerTable < ActiveRecord::Migration
  def change
    create_table "customer", force: true do |t|
      t.integer "customer_master_id"
      t.text "company_name"
      t.string "primary_contact_name"
      t.integer "primary_contact_phone"
      t.string "primary_contact_email"
      t.text "primary_contact_address_city_state_zip"
      t.string "billing_contact_name"
      t.integer "billing_contact_phone"
      t.string "billing_contact_email"
      t.text "billing_contact_address_city_state_zip"
      t.string "install_contact_name"
    end

    add_column :customer, :company_division_sub, :string
    add_column :customer, :customer_state, :boolean

    end
end
