class HomeController < ApplicationController
  def index
  	@instagram =[]
  	# client = Instagram.client(:access_token => current_user.identities.first.accesstoken )
  	# puts "*********client************#{client.inspect}"
  	# user = client.user
  	# puts "*********user************#{client.user}"
  	#Instagram.create_subscription("user", "http://test.xcard.me")
  	if current_user.identities !=[]
  	  @instagram = Instagram.user_recent_media(current_user.identities.first.uid)
  	end  
  end
end
