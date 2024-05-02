module BoardsHelper
  def can_edit_board?(board)
    user_signed_in? && board.user == current_user
  end

  def render_edit_board_link(board)
    link_to edit_board_text(board), edit_user_board_path(current_user, board), class: "bold"
  end

  def edit_board_text(board)
    "Edit #{board.name.truncate(20)}"
  end
end
