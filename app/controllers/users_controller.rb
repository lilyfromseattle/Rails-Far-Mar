class UsersController < ApplicationController
  # before_action :require_login

#Get Users
  def index
  end

#show exsisting users

  def show
    @users = User.find(params[:id])
  end

  def new
    @users = User.new
  end
#New Users
  def create
    @users = User.new(params.require(:user).permit(:username))
      if @users.save
        redirect_to "users/loginlanding"
      else
      end
  end

  def destroy

  end










end
