class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
 before_filter :initialize_user

 before_action :authenticate_user! #Liste blanche
 #attention ligne clé du site

 before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,        keys: [:avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
  end

  def initialize_user
    @client = Client.new
 end

end
