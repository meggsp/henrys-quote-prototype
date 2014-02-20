class AddProductionToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :production_notes, :text
  end
end
