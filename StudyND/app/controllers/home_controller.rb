class HomeController < ApplicationController
  def index
	@user = User.find_by id: session[:user_id]
	puts @user.first_name
  end
end
