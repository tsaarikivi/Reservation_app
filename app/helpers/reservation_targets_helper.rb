module ReservationTargetsHelper

  def token_type_use_once
    return 2
  end

  def token_type_permanent
    return 1
  end


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

  def clear_old_one_time_tokens(iSlots)
    @numberCleared = 0

    @countS = iSlots.count
    iSlots.each do |s|
      if(s.reservation_token_id != nil)
        @token = ReservationToken.find_by_id(s.reservation_token_id)
        if(@token.tokenType == token_type_use_once())
          if(@token.useDay < DateTime.now)
            s.reservation_token_id = nil
            s.save
          end
        end
      end
    end
    return @numberCleared
  end

  def selected_target
  end
end
