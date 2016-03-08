module ReservationSlotsHelper

def find_token_for_current_user(iSlotId)

    @theSlot = ReservationSlot.find_by_id(iSlotId)
    ah_current_user
    @iUserId = @currentUserGlobal.id
    @iResTargetId = @theSlot.reservation_target_id

    @tokens = ReservationToken.where("user_id = ? and reservation_target_id = ?", @iUserId, @iResTargetId)
    if @tokens.count > 0
      for @t in @tokens
        if (ReservationSlot.find_by reservation_token_id: @t.id) == nil
          return @t
        end
      end
    else
      return nil
    end
    return nil
  end
end

def handle_click_to_slot(iSlotId)

  @freedSlot = 0
  @theSlot = ReservationSlot.find_by_id(@slotId)
  ah_current_user
  @tokens = ReservationToken.where("user_id = ? and reservation_target_id = ?", @currentUserGlobal.id, @theSlot.reservation_target_id)
  @tokens.each do |t|
    if @theSlot.reservation_token_id == t.id
      @theSlot.reservation_token_id = nil
      @theSlot.save
      @freedSlot = 1
    end
  end
  if @freedSlot == 0
    @freeToken = find_token_for_current_user(@slotId)
    if @freeToken != nil
      ah_reserve_slot(@slotId, @freeToken.id)
      return 1
    else
      return 2
    end
  end
  if @freedSlot == 1
    return 3
  end
  return 0 ## this is error.
end

def go_back_to_reservation_target(iSlotId)
  #sleep(2)
  #@theSlot = ReservationSlot.find_by_id(iSlotId)
  #redirect_to :controller => 'reservation_target', :action => 'show', :id => @theSlot.reservation_target_id
end
