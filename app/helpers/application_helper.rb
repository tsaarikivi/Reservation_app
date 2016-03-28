module ApplicationHelper

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

end
