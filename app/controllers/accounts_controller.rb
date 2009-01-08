class AccountsController < ApplicationController
  def login
    session[:user] = nil
    user = User.authenticate(params[:username],params[:password])
    if user
      self.logged_in_user=user
      redirect_to home_path
    else
      flash[:error] = "用户名／密码错误！"
    end
  end
  def logout
    session.delete
    flash[:notice] = "You have Logged out"
    redirect_to login_path
  end
end
