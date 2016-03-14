class UsersessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:usersession][:name].downcase)
    if user && user.authenticate(params[:usersession][:password])
      userlog_in user
      remember user
      redirect_to user
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    userlog_out if userlogged_in?
    redirect_to root_url
  end
end
