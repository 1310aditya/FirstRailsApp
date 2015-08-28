class HomeController < ApplicationController
	#layout "playerview", except: [:index]
  def index
  	@myusers = User.all
  	@mybids = Bid.all
  	if current_user.is_player
  	render "playerview.html.erb"
  	else
  	render "index.html.erb"
  	end
  end
end
