class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    sign_up_attrs = [:email, :avatar, { roles: [] }, :password_confirmation, :remember_me, :first_name, :last_name, :username, :handicap, :street_address, :address_locality, :address_region, :postal_code]
    devise_parameter_sanitizer.permit :sign_up, keys: sign_up_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: sign_up_attrs
    devise_parameter_sanitizer.permit :account_update, keys: sign_up_attrs
  end
  protected

  def after_sign_in_path_for(resource)
    request.env["omniauth.origin"] || root_path
  end
end
