module Admins::ApplicationAdminsHelper
	def resource_name
		:admin
	end
	
	def resource
		@resource ||= Admin.new
	end
	
	def devise_mapping
		@devise_mapping ||= Devise.mappings[:admin]
	end

	def current_user
		current_admin
	end

	

end
