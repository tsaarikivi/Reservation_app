class HousingsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def new
    @housing = Housing.new
  end

  def create
    @housing = current_user.housings.build(housing_params)
    if @housing.save
      flash[:success] = "Taloyhtiö Luotu!"
      redirect_to current_user
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

  def housing_params
    params.require(:housing).permit(:name)
  end
end
