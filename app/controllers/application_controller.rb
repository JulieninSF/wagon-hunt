class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
 before_filter :initialize_user

 before_action :authenticate_user! #Liste blanche
 #attention ligne clé du site

  def product_params
    params.require(:product).permit(:name, :description, photos: [])
  end

  def initialize_user
    @client = Client.new
 end

end
