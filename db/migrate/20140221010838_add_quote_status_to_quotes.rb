class AddQuoteStatusToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :quote_status, :string
  end

end
