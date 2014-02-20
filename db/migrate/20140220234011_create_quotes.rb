class CreateQuotes < ActiveRecord::Migration

  def change
    create_table :quotes do |t|
      t.text :project_info
      t.decimal :quote_amount
      t.date :quote_due_date
      t.date :quote_projected_close_date
      t.date :artwork_due_date
      t.string :artwork_proof_link
      t.text :quotes_notes

      t.timestamps
    end
  end
end
