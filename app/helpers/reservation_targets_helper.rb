module ReservationTargetsHelper
  def current_owner
    @owner = Owner.find_by(params[:format])
  end
end
