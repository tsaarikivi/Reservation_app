class User < ActiveRecord::Base
  belongs_to :owner
end
