require 'test_helper'

class AdminTest < ActiveSupport::TestCase

  def setup
    @admin = Admin.new(email: "admin@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid admin" do
    assert @admin.valid?
  end

  test "email should be present" do
    @admin.email = "   "
    assert_not @admin.valid?
  end

  test "email should not be too long" do
    @admin.email = "a" * 244 + "@example.com"
    assert_not @admin.valid?
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[admin@example,com admin_at_foo.org admin.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @admin.email = invalid_address
      assert_not @admin.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_admin = @admin.dup
    duplicate_admin.email = @admin.email.upcase
    @admin.save
    assert_not duplicate_admin.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @admin.email = mixed_case_email
    @admin.save
    assert_equal mixed_case_email.downcase, @admin.reload.email
  end

  test "password should be present (nonblank)" do
    @admin.password = @admin.password_confirmation = " " * 6
    assert_not @admin.valid?
  end

  test "password should have a minimum length" do
    @admin.password = @admin.password_confirmation = "a" * 5
    assert_not @admin.valid?
  end

  test "authenticated? should return false for a admin with nil digest" do
    assert_not @admin.authenticated?('')
  end

  test "associated owners should be destroyed" do
    @admin.save
    @admin.owners.create!(name: "OwnerTEST")
    assert_difference 'Owner.count', -1 do
      @admin.destroy
    end
  end
end
