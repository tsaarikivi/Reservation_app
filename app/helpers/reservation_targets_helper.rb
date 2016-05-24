module ReservationTargetsHelper

  include ReservationSlotsHelper



  def current_owner
    @owner = Owner.find_by_id(params[:format])
  end

  def get_adjusted_day_index(iToday, iDayIndex)

    @returnValue = iToday + iDayIndex - 1
    if @returnValue > 7
      @returnValue -= 7
    end
    return @returnValue
  end

  def check_if_current_user_has_tokens(targetId)
    current_user
    @userTokens = ReservationToken.where("user_id = ? and reservation_target_id = ?", @current_user.id, targetId).order(:tokenType)
    @userTokens.each do |t|
      if(ReservationSlot.find_by(reservation_token_id: t.id) == nil)
        return true
      end
    end
    return false
  end

  def clear_old_one_time_tokens(iSlots)
    @numberCleared = 0

    iSlots.each do |s|
      if(s.reservation_token_id != nil)
        @token = ReservationToken.find_by_id(s.reservation_token_id)
        if(@token.tokenType == token_type_use_once())
          if(@token.useDay < DateTime.now.utc)
            s.reservation_token_id = nil
            s.save
            @numberCleared = @numberCleared + 1
          end
        end
      end
    end
    return @numberCleared
  end

  def selected_target
  end
end
