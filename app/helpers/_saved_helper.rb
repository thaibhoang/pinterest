module SavedHelper
  def display_when_user_has_no_boards(user)
    return unless user_signed_in? && user == current_user

    link_to "You haven't created any board yet. Create One Here!", new_user_board_path(user), data: { turbo_frame: "_top" }
  end
end
