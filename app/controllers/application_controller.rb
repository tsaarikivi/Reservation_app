class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  include UsersessionsHelper
  include ApplicationHelper

  private

  def logged_in_admin
    unless logged_in?
      #store_location
      redirect_to login_url
    end
  end

  def logged_in_user
    unless userlogged_in?
      #store_location
      redirect_to userlogin_url
    end
  end
end
