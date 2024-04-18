module BoardOptionHelper

  def closed_boards(pin, user, boards)
    user.saved_pins.where(pin: pin).group(:board_id).pluck(:board_id).compact.map do |board_id|
      [Board.find(board_id).name, board_id]
    end
  end

  def filter_options(pin, user, boards)   # this return two arrays, open boards raay + close boards array
    all_boards = boards.pluck(:name, :id)
    closed_boards = closed_boards(pin, user, boards)
    closed_board_ids = closed_boards.map(&:last)
    open_boards = all_boards.reject { |_board_name, board_id | closed_board_ids.include?(board_id) }
    return [open_boards, closed_boards]
  end
end
