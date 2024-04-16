require "test_helper"

class SavedPinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saved_pin = saved_pins(:one)
  end

  test "should get index" do
    get saved_pins_url
    assert_response :success
  end

  test "should get new" do
    get new_saved_pin_url
    assert_response :success
  end

  test "should create saved_pin" do
    assert_difference("SavedPin.count") do
      post saved_pins_url, params: { saved_pin: { board_id: @saved_pin.board_id, pin_id: @saved_pin.pin_id, user_id: @saved_pin.user_id } }
    end

    assert_redirected_to saved_pin_url(SavedPin.last)
  end

  test "should show saved_pin" do
    get saved_pin_url(@saved_pin)
    assert_response :success
  end

  test "should get edit" do
    get edit_saved_pin_url(@saved_pin)
    assert_response :success
  end

  test "should update saved_pin" do
    patch saved_pin_url(@saved_pin), params: { saved_pin: { board_id: @saved_pin.board_id, pin_id: @saved_pin.pin_id, user_id: @saved_pin.user_id } }
    assert_redirected_to saved_pin_url(@saved_pin)
  end

  test "should destroy saved_pin" do
    assert_difference("SavedPin.count", -1) do
      delete saved_pin_url(@saved_pin)
    end

    assert_redirected_to saved_pins_url
  end
end
