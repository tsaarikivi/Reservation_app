class ReservationTokensController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :show]
  def new
  end

  def create
  end

  def destroy
  end

  def show
    current_user



    if(@current_user != nil)
      @userId = @current_user.id ## replace this with selecting the current user ID...
      @reservation_tokens = ReservationToken.where(user_id: @userId).select(:reservation_target_id).distinct
      if(@reservation_tokens.length == 1)
        @urltogo = "/reservation_targets/" + @reservation_tokens[0].reservation_target_id.to_s
        redirect_to @urltogo
      end
    else
      @userId = 0
    end
  end

end
