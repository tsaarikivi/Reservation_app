class Owner < ActiveRecord::Base
  belongs_to :admin
  default_scope -> { order(created_at: :desc) }
  validates :admin_id, presence: true
  validates :name, presence: true, length: { maximum: 100 }
end
