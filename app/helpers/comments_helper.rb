module CommentsHelper
  def form_id(comment)
    "form_comment_#{comment.parent_id || comment.id}"
  end

  def cancel_button_for_new_comment(not_show_button, pin, comment)
    link_to 'Cancel', new_pin_comment_path(pin, parent_id: comment.parent_id, cancel_form: true) unless not_show_button
  end

  def siblings_desc(comment)
    comment.parent.replies.order(id: :desc)
  end

  def create_turbo_frame_id(comment)
    comment.parent_id ? "comment_#{comment.parent_id}_new_reply" : "comment_#{comment.id}_new_reply"
  end
end
