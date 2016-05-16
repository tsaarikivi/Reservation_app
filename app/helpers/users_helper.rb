module UsersHelper

  def write_log_entry(user, oper, status)

    if user == nil
      @theevent = oper + "Tapahtumaaika: "+ DateTime.now.to_s + ", Käyttäjä: " + "TUNTEMATON" + ", Status: " + status
    else
      @theevent = oper + "Tapahtumaaika: "+ DateTime.now.to_s + ", Käyttäjä: " + user.name + ", Status: " + status
    end

    if user == nil
      Reservationlog.create!(owner_id: 1, logstr: @theevent).save
    else
      Reservationlog.create!(owner_id: user.owner_id, logstr: @theevent).save
    end
  end


end
