class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    # authenticating with user credentials
    if !!user && user.authenticate(params[:password])
      # set session and redirect
      session[:user_id] = user.id
      flash[:notice] = 'Log in successfull.'
      # redirect_to users_path
      redirect_to '/users/show'
    else
      # error message if authentication fails
      message = 'Something went wrong! Please try again'
      redirect_to login_path, notice: message
    end
  end

  def delete
    session.clear
    redirect_to login_path
  end

end
