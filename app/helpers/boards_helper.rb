module BoardsHelper
  def can_edit_board?(board)
    user_signed_in? && board.user == current_user
  end

  def render_edit_board_link(board)
    link_to edit_board_text(board), edit_user_board_path(current_user, board), class: "bold"
  end

  def edit_board_text(board)
    "Edit #{board.name.size < 20 ? board.name : 'board'}"
  end

  def render_board_image(board)
    if board.cover_url.present?
      link_to image_tag(board.cover_url,
                        style: 'max-width: 300px; max-height: 600px; object-fit: contain;',
                        class: "board-img"), board.cover_url
    elsif board.cover.attached?
      link_to image_tag(board.resize_img(board.cover, 300, 600), class: "board-img"), board.cover
    end
  end

  def toggle_privacy_state(board)
    new_privacy = !board.keep_secret
    new_privacy ? "Public" : "Only You"
  end
end
