class RemoveQuoteMasterIdFromQuotes < ActiveRecord::Migration
  def change
    remove_column :quotes, :customer_master_id, :string
  end
end
