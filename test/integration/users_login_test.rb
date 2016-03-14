require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

   def setup
     @user = users(:testuser)
   end


  test "login with invalid information" do
    get userlogin_path
    assert_template 'usersessions/new'
    post userlogin_path, session: { name: "", password: "" }
    assert_template 'usersessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  test "login with valid information followed by logout" do
    get userlogin_path
    post userlogin_path, session: { name: @user.name, password: 'password' }
    assert is_userlogged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    delete userlogout_path
    assert_not is_userlogged_in?
    assert_redirected_to root_url
    follow_redirect!
  end
end
