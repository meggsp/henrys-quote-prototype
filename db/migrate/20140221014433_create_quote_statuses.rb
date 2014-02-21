class CreateQuoteStatuses < ActiveRecord::Migration
  def change
    create_table :quote_statuses do |t|
      t.references :quotes, index: true
      t.string :quote_status

      t.timestamps
    end
  end
end
