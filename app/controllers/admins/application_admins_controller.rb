class Admins::ApplicationAdminsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Admins::ApplicationAdminsHelper
  layout "admins/application_admins"

  protect_from_forgery with: :exception

  check_authorization :unless => :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to root_url, :alert => exception.message
  end

end
