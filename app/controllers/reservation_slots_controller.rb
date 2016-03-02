class ReservationSlotsController < ApplicationController
  def new
    @reservation_slot = ReservationSlot.new
  end

  def create
    @reservation_slot = current_reservation_target.reservation_slots.build(reservation_slot_params)
    if @reservation_slot.save
      flash[:success] = "Luotu!"
      redirect_to 'new'
    else
      flash[:danger] = "Epäonnistunut Luonti."
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

  def reservation_slot_params
    params.require(:reservation_slot).permit(:day, :startTime, :endTime)
  end
end
