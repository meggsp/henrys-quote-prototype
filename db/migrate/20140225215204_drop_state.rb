class DropState < ActiveRecord::Migration
  def change
    drop_table :quote_statuses
  end
end
