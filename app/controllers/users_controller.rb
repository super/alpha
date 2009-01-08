class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    if request.post?
      @user = User.new(params[:user])
      if @user.save
        self.logged_in_user=@user
        flash[:notice] = "注册成功。请到你的邮箱： #{@user.email} 去点击激活。"
        render :action => 'show'
      else
        render :action => 'new'
      end
    end
  end
  def show
  end
  def edit

  end
end
