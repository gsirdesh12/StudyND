class LoginControllerController < ApplicationController
  def index

  end

  def authenticate
	@user = User.find_by email: params[:email], password: params[:password]
	if @user
		flash[:message] = "Welcome #{@user.first_name}"
		session[:user_id] = @user.id
		redirect_to home_path
	else
		flash[:message] = "Email and password did not match"
		redirect_to login_path
	end
  end

  def logout
	session[:user_id] = nil
	flash[:message]= "You have been logged out."
	redirect_to login_path
  end
end
