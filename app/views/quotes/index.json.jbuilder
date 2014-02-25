json.array!(@quotes) do |quote|
  json.extract! quote, :id, :quote_id, :quote_master_id, :quote_information, :quote_amount, :quote_due_date, :artwork_due_date, :artwork_proof_link, :production_notes, :quote_status, :quote_link, :order_ship_date, :order_installation_date
  json.url quote_url(quote, format: :json)
end
