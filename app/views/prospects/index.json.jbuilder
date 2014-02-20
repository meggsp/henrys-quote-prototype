json.array!(@prospects) do |prospect|
  json.extract! prospect, :id, :prospect_id, :prospect_company, :prospect_name, :prospect_phone, :prospect_email, :prospect_address_city_state_zip
  json.url prospect_url(prospect, format: :json)
end
