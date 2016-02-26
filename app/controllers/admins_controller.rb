class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def show
    @admin = Admin.find(params[:id])
    @owners = @admin.owners
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      log_in @admin
      flash[:success] = "Onnistunut luonti!"
      redirect_to @admin
    else
      render 'new'
    end
  end


  private

  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
