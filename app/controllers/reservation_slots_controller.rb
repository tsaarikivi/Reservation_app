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

  def reserve
    @slotId = params[:id]
    @result = handle_click_to_slot(@slotId)
    if (@result == 0)
        flash[:danger]="ERROR"
    elsif @result == 1
        flash[:success]="Reservation success."
    elsif @result == 2
        flash[:danger]="No TOKEN for reservation."
    elsif @result == 3
        flash[:success]="Reservation removed."
    else
        flash[:danger]="ERROR"
    end
    redirect_to :back
  end

  def release
    @slotId = params[:id]
    @result = handle_click_to_slot(@slotId)
    if (@result == 0)
        flash[:danger]="ERROR"
    elsif @result == 1
        flash[:success]="Reservation success."
    elsif @result == 2
        flash[:danger]="No TOKEN for reservation."
    elsif @result == 3
        flash[:success]="Reservation removed."
    else
        flash[:danger]="ERROR"
    end
    redirect_to :back
  end

  def show
    @slotId = params[:id]
    @result = handle_click_to_slot(@slotId)
    if (@result == 0)
        flash[:danger]="ERROR"
    elsif @result == 1
        flash[:success]="Reservation success."
    elsif @result == 2
        flash[:danger]="No TOKEN for reservation."
    elsif @result == 3
        flash[:success]="Reservation removed."
    else
        flash[:danger]="ERROR"
    end
    redirect_to :back
  end


  private

  def reservation_slot_params
    params.require(:reservation_slot).permit(:day, :startTime, :endTime)
  end
end
