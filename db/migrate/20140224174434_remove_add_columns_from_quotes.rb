class RemoveAddColumnsFromQuotes < ActiveRecord::Migration
  def change
    remove_column :quotes, :quote_projected_close_date
    remove_column :quotes, :prospect_id
    remove_column :quotes, :project_info
    remove_column :quotes, :quote_notes
    remove_column :quotes, :updated_at
    remove_column :quotes, :production_notes
    remove_column :quotes, :quote_status

    add_column :quotes, :quote_information, :text
    add_column :quotes, :quote_link, :string
  end
end
