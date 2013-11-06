json.array!(@owners_employees) do |owners_employee|
  json.extract! owners_employee, :given_name, :last_name, :email
  json.url owners_employee_url(owners_employee, format: :json)
end
