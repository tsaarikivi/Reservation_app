module ReservationTargetsHelper
  def current_owner
    @owner = Owner.find_by_id(params[:format])
  end

  def get_adjusted_day_index(iToday, iDayIndex)

    @returnValue = iToday + iDayIndex - 1
    if @returnValue > 7
      @returnValue -= 7
    end
    return @returnValue
  end

  def selected_target
  end
end
