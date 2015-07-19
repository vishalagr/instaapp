class HomeController < ApplicationController
  def index
  	@instagram =[]
  	if current_user.identities !=[]
  	  @instagram = Instagram.user_recent_media(current_user.identities.first.uid)
  	end  
  end
end
