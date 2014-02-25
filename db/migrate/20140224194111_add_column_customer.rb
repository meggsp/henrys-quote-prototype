class AddColumnCustomer < ActiveRecord::Migration
  def change
    add_column :customer, :company_division_sub, :string
    add_column :customer, :customer_state, :boolean
  end
end
