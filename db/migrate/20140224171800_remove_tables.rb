class RemoveTables < ActiveRecord::Migration
  def change
    drop_table :prospects
    drop_table :jobs
  end
end
