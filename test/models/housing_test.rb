require 'test_helper'

class HousingTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @housing = @user.housings.build(name: "Example Housing")
  end

  test "should be valid" do
    assert @housing.valid?
  end

  test "user id should be present" do
    @housing.user_id = nil
    assert_not @housing.valid?
  end

  test "name should be present" do
    @housing.name = "   "
    assert_not @housing.valid?
  end

  test "name should be at most 100 characters" do
    @housing.name = "a" * 101
    assert_not @housing.valid?
  end

  test "order should be most recent first" do
    assert_equal housings(:most_recent), Housing.first
  end
end
