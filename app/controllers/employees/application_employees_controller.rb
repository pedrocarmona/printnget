class Employees::ApplicationEmployeesController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Employees::ApplicationEmployeesHelper
  layout "employees/application_employees"

  protect_from_forgery with: :exception

  check_authorization :unless => :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to root_url, :alert => exception.message
  end

  def after_sign_in_path_for(resource)
  	sign_in_url = url_for(:action => 'new', :controller => 'sessions', :only_path => false, :protocol => 'http')
  	if request.referer == sign_in_url
  		super
  	else
  		stored_location_for(resource) || request.referer || employees_path
  	end
  end


  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:given_name, :full_name)}
  end

end
