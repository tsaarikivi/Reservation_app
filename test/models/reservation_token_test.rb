require 'test_helper'

class ReservationTokenTest < ActiveSupport::TestCase

  def setup
    @user = users(:testuser)
    @reservation_target = reservation_targets(:testtarget)
    @reservation_token = @user.reservation_tokens.build(
                               user_id: @user,
                               reservation_target_id: @reservation_target
    )
  end

  # test "should be valid" do
  #  assert @reservation_token.valid?
  # end

end
