class UsersController < ApplicationController
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

  private

  def user_params
    params.require(:user).permit(:name, :password,
                                 :password_confirmation)
  end
end
