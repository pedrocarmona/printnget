json.array!(@admins_companies) do |admin_company|
  json.extract! admin_company, 
  json.url admin_company_url(admin_company, format: :json)
end
