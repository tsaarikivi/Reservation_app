module UsersessionsHelper

  # Logs in the given user.
  def userlog_in(user)
    session[:user_id] = user.id
  end

  # Remembers a user in a persistent session.
  def userremember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  # Returns the user corresponding to the remember token cookie.
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        userlog_in user
        @current_user = user
      end
    end
  end

  # Returns true if the user is logged in, false otherwise.
  def userlogged_in?
    !current_user.nil?
  end

  def userhasmultipletargets?
    current_user
    @tokesforuser = ReservationToken.where(user_id: @current_user.id).select(:reservation_target_id).distinct
    if @tokesforuser.length > 1
      return true
    end
    return false
  end

  # Forgets a persistent session.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Logs out the current user.
  def userlog_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
end
