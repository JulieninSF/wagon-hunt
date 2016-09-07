class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
 before_filter :initialize_user

 before_action :authenticate_user! #Liste blanche
 #attention ligne clé du site

  def initialize_user
    @client = Client.new
 end


end
