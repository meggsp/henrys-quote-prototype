json.array!(@quotes) do |quote|
  json.extract! quote, :id, :customer_master_id, :prospect_id, :project_info, :quote_amount, :quote_due_date, :quote_projected_close_date, :artwork_due_date, :artwork_proof_link, :quote_notes
  json.url quote_url(quote, format: :json)
end
