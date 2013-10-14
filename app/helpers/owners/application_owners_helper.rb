module Owners::ApplicationOwnersHelper
	def resource_name
		:owner
	end
	
	def resource
		@resource ||= Owner.new
	end
	
	def devise_mapping
		@devise_mapping ||= Devise.mappings[:owner]
	end

	def current_user
		current_owner
	end

	

end
