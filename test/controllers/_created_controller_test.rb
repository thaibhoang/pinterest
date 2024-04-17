require "test_helper"

class CreatedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get _created_index_url
    assert_response :success
  end
end
