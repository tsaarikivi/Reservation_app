class ReservationTargetsController < ApplicationController
  def new
    @reservation_target = ReservationTarget.new
  end

  def create
    @reservation_target = current_owner.reservation_targets.build(reservation_target_params)
    if @reservation_target.save
      flash[:success] = "Resurssi Luotu!"
      redirect_to current_owner
    else
      flash[:danger] = "Epäonnistunut Luonti."
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

  def reservation_target_params
    params.require(:reservation_target).permit(:name, :category)
  end
end
