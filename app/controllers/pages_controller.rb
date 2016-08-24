class PagesController < ApplicationController

  def home
    #render plain: "Welcome!!!"
    @today = Date.today
  end

def team
@members = ["P", "J", "ML"]
  end

  def joinus
    render plain: "Send us a mail!!!"
  end

end
