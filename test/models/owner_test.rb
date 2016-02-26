require 'test_helper'

class OwnerTest < ActiveSupport::TestCase

  def setup
    @admin = admins(:michael)
    @owner = @admin.owners.build(name: "Example Owner")
  end

  test "should be valid" do
    assert @owner.valid?
  end

  test "admin id should be present" do
    @owner.admin_id = nil
    assert_not @owner.valid?
  end

  test "name should be present" do
    @owner.name = "   "
    assert_not @owner.valid?
  end

  test "name should be at most 100 characters" do
    @owner.name = "a" * 101
    assert_not @owner.valid?
  end

  test "order should be most recent first" do
    assert_equal owners(:most_recent), Owner.first
  end
end
