# helper method for saved_pin
module SavedPinsHelper
  # check if the pin has been saved to any boards, return the id of the nearest board that this pin has been saved to
  def saved_to_board(pin, user)
    saved_boards = user.saved_pins.where(pin: pin).order(updated_at: :desc)
    saved_boards.present? ? [true, saved_boards.first.board_id] : [false, nil]
  end

  # return saved_pin if pin has been saved to profile else return nil
  def check_saved_to_profile(pin, user)
    user.saved_pins.find_by(pin: pin, board_id: nil)
  end
end
