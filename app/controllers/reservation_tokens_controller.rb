class ReservationTokensController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  def show
    ah_current_user #TODO remove this when current user implementation is ready
    @user = @currentUserGlobal ## replace this with selecting the current user ID...
    @reservation_tokens = ReservationToken.where(user_id: @user.id).select(:reservation_target_id).distinct
  end

end
