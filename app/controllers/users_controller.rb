class UsersController < ApplicationController
  # before_action :require_login

#Get Users
  def index
  end

#show exsisting users
  #
  # def show
  #   @users = User.all
  # end

  def new
    @users = User.new
  end

#New Users
  def create
    puts params.inspect
    @users = User.new(params.require(:user).permit(:name))
      if @users.save
        redirect_to "/users/ll"
      else
      end
  end

  def login
    if @users = User.find_by(name: params[:user][:name])
      # if @users.save
      session[:id] = @users.id
        redirect_to "/users/ll"
      else
        redirect_to "/404"
    end
  end


  def destroy
  end

  def ll
    # logger.debug("HELP")
  end


end
