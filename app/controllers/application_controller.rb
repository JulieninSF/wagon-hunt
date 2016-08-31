class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
 before_filter :initialize_user

  def initialize_user
    @client = Client.new
  end


end
