json.array!(@customers) do |customer|
  json.extract! customer, :id, :company_name, :primary_contact_name, :primary_contact_phone, :primary_contact_email, :primary_contact_address_city_state_zip, :billing_contact_name, :billing_contact_phone, :billing_contact_email, :billing_contact_address_city_state_zip, :install_contact_name, :company_division_sub, :customer_state
  json.url customer_url(customer, format: :json)
end
