class ReservationSlotsController < ApplicationController

  include ReservationSlotsHelper

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


  def show
    @slotId = params[:id]
    @result = handle_click_to_slot(@slotId)
    if (@result == 0)
        flash[:danger]="VIRHE"
    elsif @result == 1
        flash[:success]="Varaus onnistui."
    elsif @result == 2
        flash[:danger]="Ei varauksia."
    elsif @result == 3
        flash[:success]="Varaus poistettu."
    else
        flash[:danger]="VIRHE"
    end
    redirect_to :back
  end


  private

  def reservation_slot_params
    params.require(:reservation_slot).permit(:day, :startTime, :endTime)
  end
end
