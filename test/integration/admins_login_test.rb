require 'test_helper'

class AdminsLoginTest < ActionDispatch::IntegrationTest
  def setup
    @admin = admins(:michael)
  end

  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, session: { email: "", password: "" }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  test "login with valid information" do
    get login_path
    post login_path, session: { email: @admin.email, password: 'password' }
    assert_redirected_to @admin
    follow_redirect!
    assert_template 'admins/show'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", admin_path(@admin)
  end

  test "login with valid information followed by logout" do
    get login_path
    post login_path, session: { email: @admin.email, password: 'password' }
    assert is_logged_in?
    assert_redirected_to @admin
    follow_redirect!
    assert_template 'admins/show'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", admin_path(@admin)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    # Simulate a admin clicking logout in a second window.
    delete logout_path
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path,      count: 0
    assert_select "a[href=?]", admin_path(@admin), count: 0
  end

  test "login with remembering" do
    log_in_as(@admin, remember_me: '1')
    assert_not_nil cookies['remember_token']
  end

  test "login without remembering" do
    log_in_as(@admin, remember_me: '0')
    assert_nil cookies['remember_token']
  end
end
