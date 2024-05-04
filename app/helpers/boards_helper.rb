module BoardsHelper
  def can_edit_board?(board)
    user_signed_in? && board.user == current_user
  end

  def truncated_board_name(name, length)
    name.strip.truncate(length)
  end

  def render_edit_board_link(board)
    link_to link_text("Edit", board), edit_user_board_path(current_user, board), class: "bold"
  end

  def render_destroy_board_link(board)
    link_to link_text("Destroy", board), user_board_path(current_user, board),
            data: { turbo_confirm: "Are you sure?",
                    turbo_method: :delete,
                    turbo_frame: "_top" },
            class: "bold"
  end

  def link_text(action, board)
    "#{action} #{board.name.size < 20 ? board.name : 'board'}"
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

  def render_board_thumbnail_image(board)
    if board.cover_url.present?
      image_tag(board.cover_url, style: 'height: 157px; width: 157px; object-fit: cover;', class: "board-thumbnail")
    elsif board.cover.attached?
      image_tag(board.resize_fill_img(board.cover, 157, 157), class: "board-thumbnail")
    else
      content_tag(:div, "", class: "img_place_holder")
    end
  end

  def toggle_privacy_state(board)
    new_privacy = !board.keep_secret
    new_privacy ? "Public" : "Only You"
  end

  def board_basic_detail(board)
    if board.not_empty?
      pluralize(board.saved_pins.count, "pin")
    else
      "Currently empty"
    end
  end
end
