class DropTableQuotes < ActiveRecord::Migration
  def change
    drop_table :quotes
  end
end
