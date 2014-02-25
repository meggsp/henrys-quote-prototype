class AddColumnQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :customer_master_id, :integer
  end
end
