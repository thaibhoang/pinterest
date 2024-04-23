require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    sign_in_user users(:one)
  end


  test "should get user" do
    get user_url(@user)
    assert_response :redirect
  end

end
