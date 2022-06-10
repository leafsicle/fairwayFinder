class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :store_action

  def configure_permitted_parameters
    added_attrs = [:name, :email, :password_confirmation, :remember_me]
    sign_up_attrs = [:email, :avatar, { roles: [] }, :password_confirmation, :remember_me, :first_name, :last_name, :username, :handicap, :street_address, :address_locality, :address_region, :postal_code]
    devise_parameter_sanitizer.permit :sign_up, keys: sign_up_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: sign_up_attrs
  end

  def store_action
    return unless request.get?
    if (request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation" &&
        request.path != "/users/sign_out" &&
        !request.xhr?) # don't store ajax calls
      store_location_for(:user, request.fullpath)
    end
  end

  protected

  def after_sign_in_path_for(resource)
    request.env["omniauth.origin"] || stored_location_for(resource) || root_path
  end
end
