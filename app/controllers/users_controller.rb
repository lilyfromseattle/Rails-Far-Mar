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
    @user = User.new(params.require(:user).permit(:name, :email))
      if @user.save
        session[:id] = @user.id
        redirect_to "/users/ll"
      else
        render :new
      end
  end




  def login
    if @users = User.find_by(params[:user][:name])
      # if @users.save
      session[:id] = @users.id
      @username = User.find(session[:id]).name
      @usernames = "Welcome back " + @username
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
