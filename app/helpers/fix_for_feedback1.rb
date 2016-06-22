module FixForFeedback1

  def addOneMoreTokenForEveryone(usr, tgt)

    usr.each do |u|
      ReservationToken.create( user_id: u.id, reservation_target_id: tgt.id, tokenType: 2 )
    end
  end

  def modifyTheSlots(tgt)
    @slots = ReservationSlot.where(reservation_target_id: tgt.id)
    for s in @slots
      if s.startTime == 800
        s.startTime = 900
        s.endTime = 1200
        s.save()
      elsif s.startTime == 1500
        s.endTime = 1800
        s.save()
      end
    end
  end

  def addMissingSlots(tgt)
    for day in 1..7
      ReservationSlot.create(reservation_target_id: tgt.id, day: day, startTime: 1200,  endTime: 1500, slotStatus: 1)
      ReservationSlot.create(reservation_target_id: tgt.id, day: day, startTime: 1800,  endTime: 2200, slotStatus: 1)
    end
  end

  def implementFix()
    @users = User.all()
    @target = ReservationTarget.where("name = ?", "Kuivaushuone").first;
    addOneMoreTokenForEveryone(@users, @target)
    modifyTheSlots(@target)
    addMissingSlots(@target)

  end


end
