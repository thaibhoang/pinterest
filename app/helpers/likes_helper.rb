module LikesHelper
  def likes_count(likeable)
    likeable.likes.size
  end

  def liked_by_current_user(likeable)
    likeable.likes.select { |like| like.user_id == current_user.id }[0]
  end
end
