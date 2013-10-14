module Employees::ApplicationEmployeesHelper
	def resource_name
		:employee
	end
	
	def resource
		@resource ||= Employee.new
	end
	
	def devise_mapping
		@devise_mapping ||= Devise.mappings[:employee]
	end

	def current_user
		current_employee
	end

	

end
