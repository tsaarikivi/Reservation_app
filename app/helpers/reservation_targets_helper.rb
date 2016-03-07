module ReservationTargetsHelper
  def current_owner
    @owner = Owner.find_by_id(params[:format])
  end

  def selected_target
  end
end
