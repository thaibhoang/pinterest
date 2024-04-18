module CheckSavedHelper
  def saved_to_board(pin, user)
    saved_in_boards = user.saved_pins.where(pin: pin).pluck(:board_id)
    result = (saved_in_boards.count > 0) ? [true, saved_in_boards.first] : [false, nil]
    return result
  end

  def check_saved_to_profile(pin, user)
    saved_in_boards = SavedPin.find_by(user:current_user, pin: pin, board_id: nil)
  end
end
