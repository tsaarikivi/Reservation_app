class ReservationTokensController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  def show
    ah_current_user #TODO remove this when current user implementation is ready
    @userId = @currentUserGlobal.id ## replace this with selecting the current user ID...
    @reservation_tokens = ReservationToken.where(user_id: @userId).select(:reservation_target_id).distinct
  end

end
