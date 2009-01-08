class AccountsController < ApplicationController
  def login
    session[:user] = nil
    if request.post?
      user = User.authenticate(params[:username],params[:password])
      if user
        self.logged_in_user=user
        redirect_to home_path
      else
        flash[:error] = "用户名／密码错误！"
      end
    end
  end
  def logout
    session.delete
    flash[:notice] = "您已经退出了！"
    redirect_to login_path
  end
end
