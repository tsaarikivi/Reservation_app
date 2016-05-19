class UsersController < ApplicationController
before_action :logged_in_user, only: [:update]
  include UsersHelper

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      userlog_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if BCrypt::Password.new(current_user.password_digest) == params[:user][:old_password]
      if current_user.update_attributes(user_params)
        flash[:success] = "Käyttäjä päivitetty"
        write_log_entry(@user, "KÄYTTÄJÄPÄIVITYS", "OK")
        redirect_to root_url
      else
        flash.now[:danger] = "Jokin meni pieleen"
        write_log_entry(@user, "KÄYTTÄJÄPÄIVITYS", "JOKINMENIPIELEEN")
        render 'edit'
      end
    else
      flash.now[:danger] = "Tarkista salasanasi"
      write_log_entry(@user, "KÄYTTÄJÄPÄIVITYS", "TARKISTASALASANASI")
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password,
                                 :password_confirmation)
  end
end
