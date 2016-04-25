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

  def edit
    @user = current_user
    if (@user.id == params[:id])
      redirect_to root_url
    end
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      flash[:success] = "Käyttäjä päivitetty"
      redirect_to root_url
    else
      flash[:danger] = "Jokin meni pieleen"
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password,
                                 :password_confirmation)
  end
end
