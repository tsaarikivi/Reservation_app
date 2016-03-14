module ApplicationHelper

  def ah_reserve_slot(iSlot, iToken)
    @reservation_slot = ReservationSlot.find_by_id(iSlot)
    if iToken != nil
      @reservation_slot.reservation_token_id = iToken
      @reservation_slot.save
    end
  end


end
