class StaticPagesController < ApplicationController
  def home
    @owner = current_admin.owners.build if logged_in?
  end

  def help
  end

  def about
  end
end
