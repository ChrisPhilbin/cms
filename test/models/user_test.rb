require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "User should be valid" do
    @user = User.new(name: "Example User", email: "example@example.com")
    assert @user.valid?
  end
  
  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end
  
  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end
  
end
