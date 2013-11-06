json.array!(@admins_owners) do |admins_owner|
  json.extract! admins_owner, 
  json.url admins_owner_url(admins_owner, format: :json)
end
