class ReservationTargetsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :show]
  include ReservationTargetsHelper

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

  def show
    byebug
    @target = ReservationTarget.find(params[:id])
    @reservation_slots = ReservationSlot.where(reservation_target_id: @target.id)
    @cleared = clear_old_one_time_tokens(@reservation_slots)
    @userHasTokensToUse = check_if_current_user_has_tokens(@target.id)

  end

  private

  def reservation_target_params
    params.require(:reservation_target).permit(:name, :category)
  end
end
