require 'test_helper'

class SessionsHelperTest < ActionView::TestCase

  def setup
    @admin = admins(:michael)
    remember(@admin)
  end

  test "current_admin returns right admin when session is nil" do
    assert_equal @admin, current_admin
    assert is_logged_in?
  end

  test "current_admin returns nil when remember digest is wrong" do
    @admin.update_attribute(:remember_digest, Admin.digest(Admin.new_token))
    assert_nil current_admin
  end
end
