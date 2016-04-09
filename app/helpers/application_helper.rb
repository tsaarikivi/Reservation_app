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

  def paiva_to_s(paiva)
    @dayNames = ["Maanantai", "Tiistai", "Keskiviikko", "Torstai", "Perjantai", "Lauantai", "Sunnuntai"]
    if(paiva > 7)
      return "error in day name"
    else
      return @dayNames[paiva-1]
    end
  end

end
