class FeedbacksController < ApplicationController
before_action :logged_in_user, only: [:create, :new]
def new
  @feedback = Feedback.new
  @owner = Owner.find_by_id(current_user.owner_id)
end

def create
  @feedback = Feedback.create(feedback_params) do |f|
    f.owner_id = current_user.owner_id
  end
  if @feedback.save
    flash[:success] = "Palaute lähetetty."
    redirect_to root_url
  else
    flash[:danger] = "Jokin meni pieleen."
    redirect_to root_url
  end
end

private

def feedback_params
  params.require(:feedback).permit(:feedbackText)
end

end
