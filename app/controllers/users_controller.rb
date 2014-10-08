class UsersController < ApplicationController
  before_action :require_login

#Get Users
  def index
    @users = users.all
  end

#New Users
  def new
    @users = User.new[get user params]
      if @user.save
        #redirect to: 2nd landing page
      else
        render "new"
      end
  end

  def destroy
    self.destroy
  end
  
end
