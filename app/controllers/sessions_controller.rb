class SessionsController < ApplicationController

  def new
  end

  def create
    # Rails.logger.info(params.inspect)
    user = User.find_by(username: params[:username])
    # byebug 
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/sessions/new', notice: 'Incorrect username or password, please try again!'
    end

  end

  def destroy
    reset_session
    redirect_to '/'
  end

end
