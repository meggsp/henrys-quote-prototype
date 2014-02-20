json.array!(@jobs) do |job|
  json.extract! job, :id, :job_id, :customer_id, :customer_po, :job_info, :production_start_date, :production_due_date, :delivery_date, :install_1_date, :install_2_date, :production_notes, :install_location
  json.url job_url(job, format: :json)
end
