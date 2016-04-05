module ApplicationHelper

  @current_target = nil
########################################
## Return the day number of the slot
########################################
  def ah_reserve_slot(iSlot, iToken)
    if iToken != nil
      iSlot.reservation_token_id = iToken
      iSlot.save
    end
    return iSlot.day
  end

  def current_target(ct)

    if(ct != nil)
      byebug
      @current_target = ct
    end

    return @current_target

  end
end
