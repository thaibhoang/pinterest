require "application_system_test_case"

class SavedPinsTest < ApplicationSystemTestCase
  setup do
    @saved_pin = saved_pins(:one)
  end

  test "visiting the index" do
    visit saved_pins_url
    assert_selector "h1", text: "Saved pins"
  end

  test "should create saved pin" do
    visit saved_pins_url
    click_on "New saved pin"

    fill_in "Board", with: @saved_pin.board_id
    fill_in "Pin", with: @saved_pin.pin_id
    fill_in "User", with: @saved_pin.user_id
    click_on "Create Saved pin"

    assert_text "Saved pin was successfully created"
    click_on "Back"
  end

  test "should update Saved pin" do
    visit saved_pin_url(@saved_pin)
    click_on "Edit this saved pin", match: :first

    fill_in "Board", with: @saved_pin.board_id
    fill_in "Pin", with: @saved_pin.pin_id
    fill_in "User", with: @saved_pin.user_id
    click_on "Update Saved pin"

    assert_text "Saved pin was successfully updated"
    click_on "Back"
  end

  test "should destroy Saved pin" do
    visit saved_pin_url(@saved_pin)
    click_on "Destroy this saved pin", match: :first

    assert_text "Saved pin was successfully destroyed"
  end
end
