module ReservationTargetsHelper
  def current_owner
    @owner = Owner.find_by_id(params[:id])
  end
end