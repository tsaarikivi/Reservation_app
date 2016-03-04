class ReservationTokensController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  def show
    @user = User.find(1)
    @reservation_tokens = @user.reservation_tokens
  end

end
