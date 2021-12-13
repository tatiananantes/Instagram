 class UsersController < ApplicationController
 
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:notice] = 'User Created'
      session[:user_id] = @user.id
      redirect_to users_url
    else
      render :new     
    end
  end
  
  def show
    @user = User.find(session[:user_id])
  end
  
  def index
    @user = User.find_by_id(session[:user_id])
  end


  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
  
end