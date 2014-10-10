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
    if @users = User.find_by(params[:user][:name])
      session[:id] = @users.id
      redirect_to "/users/ll"
    else
      redirect_to "/404"
      @username = User.find(session[:id]).name
      @usernames = "Welcome back " + @usernames
        render "/users/ll"
      else
        redirect_to "/404"
    end
  end


  def destroy
  end

  def ll
    # logger.debug("HELP")
  end

  def signup

  end

end
