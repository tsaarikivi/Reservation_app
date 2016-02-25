class StaticPagesController < ApplicationController
  def home
    @housing = current_user.housings.build if logged_in?
  end

  def help
  end

  def about
  end
end
