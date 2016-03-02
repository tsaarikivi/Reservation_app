require 'test_helper'

class ReservationTargetTest < ActiveSupport::TestCase
  def setup
    @owner = owners(:testowner)
    @reservation_target = @owner.reservation_targets.build(
                                 name: "testrestar",
                                 category: 1,
                                 timeWindowInDays: 7
    )
  end

  test "should be valid" do
    assert @owner.valid?
  end

  test "name should be present" do
    @reservation_target.name = "   "
    assert_not @reservation_target.valid?
  end

  test "name should be at most 100 characters" do
    @reservation_target.name = "a" * 101
    assert_not @reservation_target.valid?
  end

  test "category should be present" do
    @reservation_target.category = nil
    assert_not @reservation_target.valid?
  end

  test "should have parent owner" do
    @reservation_target.owner_id = nil
    assert_not @reservation_target.valid?
  end

  test "timeWindowInDays should be present" do
    @reservation_target.timeWindowInDays = nil
    assert_not @reservation_target.valid?
  end
end
