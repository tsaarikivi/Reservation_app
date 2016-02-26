class OwnersController < ApplicationController
  before_action :logged_in_admin, only: [:create, :destroy]

  def new
    @owner = Owner.new
  end

  def create
    @owner = current_admin.owners.build(owner_params)
    if @owner.save
      flash[:success] = "Taloyhtiö Luotu!"
      redirect_to current_admin
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

  def owner_params
    params.require(:owner).permit(:name)
  end
end
