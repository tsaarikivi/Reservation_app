module ApplicationHelper

########################################
## Return the day number of the slot
########################################
  def ah_reserve_slot(iSlot, iToken)
    @reservation_slot = ReservationSlot.find_by_id(iSlot)
    if iToken != nil
      @reservation_slot.reservation_token_id = iToken
      @reservation_slot.save
    end
    return @reservation_slot.day
  end

  @ShowReservationsButton = true

end
