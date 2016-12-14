class HomeController < ProtectedController
  def index
	@user = User.find_by id: session[:user_id]
	  @groups = @user.groups
	puts @user.first_name
  end
end
