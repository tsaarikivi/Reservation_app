class Feedback < ActiveRecord::Base
  belongs_to :owner
  validates :owner_id, presence: true
  validates :feedbackText, presence: true
end
