module ReservationSlotsHelper


  def token_type_use_once
    return 2
  end

  def token_type_permanent
    return 1
  end

  def token_type_to_s(typ)
    if(typ == token_type_use_once())
      return "KERTA"
    end
    if(typ == token_type_permanent())
      return "PYSYVÄ"
    end
  end

def find_token_for_current_user(iSlotId)

    @theSlot = ReservationSlot.find_by_id(iSlotId)
    current_user
    @iUserId = @current_user.id
    @iResTargetId = @theSlot.reservation_target_id

    @tokens = ReservationToken.where("user_id = ? and reservation_target_id = ?", @iUserId, @iResTargetId).order(:tokenType)
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


def write_log_entry(oper, tkn, slt)
  $target = ReservationTarget.find_by_id(tkn.reservation_target_id)

  @theevent = oper + "Tapahtumaaika: "+ DateTime.now.to_s + ", Type: " + token_type_to_s(tkn.tokenType) + ", Käyttäjä: " + current_user.name + ", Kohde: " + $target.name + ", Varaus: " + paiva_to_s(slt.day) + " " + slt.startTime.to_s + "-" + slt.endTime.to_s + ", Käyttöpäivä: " + tkn.useDay.to_s

  Reservationlog.create!(owner_id: @current_user.owner_id, logstr: @theevent).save

end

## Return 1 if token is freed
def try_to_free_token(tkn, slt)

  if slt.reservation_token_id == tkn.id
    slt.reservation_token_id = nil
    slt.save

    write_log_entry("VAPAUTUS: ", tkn, slt)

    return 1
  end
end

def handle_click_to_slot(iSlotId)

  @freedSlot = 0
  @theSlot = ReservationSlot.find_by_id(@slotId)
  @tokens = ReservationToken.where("user_id = ? and reservation_target_id = ?", current_user.id, @theSlot.reservation_target_id)
  @tokens.each do |t|
    if try_to_free_token(t,@theSlot) == 1
      @freedSlot = 1
      break
    end
  end
  if @freedSlot == 0
    @freeToken = find_token_for_current_user(@slotId)
    if @freeToken != nil and @theSlot.reservation_token_id == nil
      @slotDay = ah_reserve_slot(@theSlot, @freeToken.id)

      @todayNum = DateTime.now.strftime("%u").to_i

      ##Find how many hours & minutes to add to the useDay timestamp.
      if(@theSlot.startTime < 1000)
        @hoursToAdd = @theSlot.startTime.to_s.slice(0).to_i
        @minutesToAdd = @theSlot.startTime.to_s.slice(1..2).to_i
      else
        @hoursToAdd = @theSlot.startTime.to_s.slice(0..1).to_i
        @minutesToAdd = @theSlot.startTime.to_s.slice(2..3).to_i
      end

      if(@todayNum < @slotDay)
        @freeToken.useDay = DateTime.now.advance(:days => (@slotDay - @todayNum)).beginning_of_day
      else
        ##TODO - the number 7 should be replaced by the ReservationTarget.timeWindow attribute
        @freeToken.useDay = DateTime.now.advance(:days => (7 + @slotDay - @todayNum)).beginning_of_day
      end
      @freeToken.useDay = @freeToken.useDay.advance(:hours => @hoursToAdd)
      @freeToken.useDay = @freeToken.useDay.advance(:minutes => @minutesToAdd)

      @freeToken.save
      write_log_entry("VARAUS: ", @freeToken, @theSlot)
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
