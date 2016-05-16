class UsersessionsController < ApplicationController

include UsersHelper

  def new
  end

  def create
    user = User.find_by(name: params[:usersession][:name].downcase)
    if user && user.authenticate(params[:usersession][:password])
      userlog_in user
      remember user
      write_log_entry(user, "KÄYTTÄJÄLOGIN", "OK")
      redirect_to root_url
    else
      flash.now[:danger] = 'Väärä käyttäjä/salasana.'
      write_log_entry(user, "KÄYTTÄJÄLOGIN", "VÄÄRÄKÄYTTÄJÄSALASANA")
      render 'new'
    end
  end

  def destroy
    write_log_entry(current_user, "KÄYTTÄJÄLOGOUT", "OK")
    userlog_out if userlogged_in?
    redirect_to root_url
  end
end
