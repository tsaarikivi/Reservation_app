require 'test_helper'

class ReservationSlotTest < ActiveSupport::TestCase

  def setup
    @reservation_target = reservation_targets(:testtarget)
    @reservation_slot = @reservation_target.reservation_slots.build(
                        day: 1,
                        startTime: 1800,
                        endTime: 2000,
                        reservation_target_id: @reservation_target
    )
  end

  test "should be valid" do
    assert @reservation_slot.valid?
  end

  test "day should be present" do
    @reservation_slot.day = nil
    assert_not @reservation_slot.valid?
  end

  test "startTime should be present" do
    @reservation_slot.startTime = nil
    assert_not @reservation_slot.valid?
  end

  test "endTime should be present" do
    @reservation_slot.endTime = nil
    assert_not @reservation_slot.valid?
  end

  test "reservation_target_id should be present" do
    @reservation_slot.reservation_target_id = nil
    assert_not @reservation_slot.valid?
  end
end
