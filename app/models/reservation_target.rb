class ReservationTarget < ActiveRecord::Base
  belongs_to :owner
  default_scope -> { order(created_at: :desc) }
  validates :owner_id, presence: true
  validates :name, presence: true, length: { maximum: 100 }
  validates :category, presence: true
end
