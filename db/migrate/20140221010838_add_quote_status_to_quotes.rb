class AddQuoteStatusToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :quote_status, :string
    remove_column :quotes, :quote_projected_close_date, :date
  end

end
