module LikesHelper
  def likes_count(likeable)
    likeable.likes.count
  end

  def liked_by_current_user(likeable)
    current_user.likes.find_by(likeable: likeable)
  end
end
