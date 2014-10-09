class UsersController < ApplicationController
  # before_action :require_login

#Get Users
  def index
  end

#show exsisting users

  def show
    @users = User.all
  end

  def new
    @users = User.new
  end
#New Users
  def create
    @users = User.new(params.require(:user).permit(:username))
      if @users.save
        redirect_to "/users/ll"
      else
      end
  end

  def destroy
  end

  def ll
  end

end
