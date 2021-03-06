require 'test_helper'

class ReservationTokenTest < ActiveSupport::TestCase

  def setup
    @user = users(:testuser)
    @reservation_target = reservation_targets(:testtarget)
    @reservation_token = ReservationToken.create!(
                               user_id: @user.id,
                               reservation_target_id: @reservation_target.id
    )
    @sun = reservation_tokens(:testtoken)
  end

  test "should be valid" do
    assert @reservation_token.valid?
  end

  test "user_id should be present" do
    @reservation_token.user_id = nil
    assert_not @reservation_token.valid?
  end

  test "reservation_target_id should be present" do
    @reservation_token.reservation_target_id = nil
    assert_not @reservation_token.valid?
  end
end
