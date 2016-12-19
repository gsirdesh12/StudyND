class ProtectedController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_action :set_active_user, except: [:new, :create]

  def require_login
    puts ":: requiring login"
    unless session[:user_id]
      flash[:message] = "You must be logged in to view this."
      redirect_to login_path
    end
  end

  def set_active_user
    @active_user = User.find(session[:user_id])
  end
end
