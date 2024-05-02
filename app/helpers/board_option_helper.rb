# helper methods for finding which boards the pin has been saved to and which it has not
module BoardOptionHelper
  # This return name and id of boards that pin has been saved to
  def closed_boards(pin, user)
    closed_board_ids = user.saved_pins.where(pin: pin).pluck(:board_id).uniq.compact
    user.boards.where(id: closed_board_ids).pluck(:name, :id)
  end

  # this return two arrays, open boards array + close boards array
  def filter_options(pin, user, boards)
    all_boards = boards.pluck(:name, :id)
    closed_boards = closed_boards(pin, user)
    closed_board_ids = closed_boards.map(&:last)
    open_boards = all_boards.reject { |_board_name, board_id| closed_board_ids.include?(board_id) }
    [open_boards, closed_boards]
  end
end
