class OwnersController < ApplicationController
  before_action :logged_in_admin, only: [:create, :destroy, :show]

  def new
    @owner = Owner.new
  end

  def show
    @owner = Owner.find(params[:id])
    @reservation_targets = @owner.reservation_targets
    @logentries = Reservationlog.last(100)
    #@logentries.order(:created_at)
  end

  def create
    @owner = current_admin.owners.build(owner_params)
    if @owner.save
      flash[:success] = "Taloyhtiö Luotu!"
      redirect_to current_admin
    else
      flash[:success] = "Epäonnistunut Luonti."
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
