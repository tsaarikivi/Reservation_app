module ReservationTokensHelper


  def write_token_log_entry(oper, tkn)
    $target = ReservationTarget.find_by_id(tkn.reservation_target_id)
    @theevent = oper + "Tapahtumaaika: "+ DateTime.now.to_s + " " + token_type_to_s(tkn.tokenType) + " Käyttäjä: " + current_user.name + " Kohde: " + $target.name  + " käyttöpäivä: " + tkn.useDay.to_s
    Reservationlog.create!(owner_id: @current_user.owner_id, logstr: @theevent).save

  end

end
