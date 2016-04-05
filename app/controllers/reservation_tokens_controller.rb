class ReservationTokensController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :show]

  include ReservationSlotsHelper


  def new
    if params[:reservation_target_id] == nil
      redirect_to root_url
    else
      #@token = ReservationToken.new
      @target = ReservationTarget.find(params[:reservation_target_id])
    end
    @tokensToRemove = ReservationToken.where("user_id = ? and reservation_target_id = ?", current_user.id, params[:reservation_target_id]).order(:tokenType)
  end

  def create
    @token = ReservationToken.create() do |t|
      t.user_id = current_user.id
      t.reservation_target_id = params[:reservation_target_id]
      t.tokenType = params[:tokenType]
    end
    if @token.save
      flash[:success] = "Varaus luotu."
      redirect_to "/reservation_targets/" + params[:reservation_target_id].to_s
    else
      flash[:danger] = "Jokin meni pieleen."
      render 'new'
    end
  end

  def destroy
    @token = ReservationToken.find_by_id(params[:id])
    if @token.destroy
      flash[:success] = "Varaus poistettu."
      redirect_to "/reservation_targets/" + params[:reservation_target_id].to_s
    else
      flash[:danger] = "Jokin meni pieleen."
      render 'new'
    end
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
