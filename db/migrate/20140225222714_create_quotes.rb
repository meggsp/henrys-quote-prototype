class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.integer :quote_id
      t.integer :quote_master_id
      t.text :quote_information
      t.decimal :quote_amount
      t.date :quote_due_date
      t.date :artwork_due_date
      t.string :artwork_proof_link
      t.text :production_notes
      t.string :quote_status
      t.string :quote_link
      t.date :order_ship_date
      t.date :order_installation_date

      t.timestamps
    end
  end
end
