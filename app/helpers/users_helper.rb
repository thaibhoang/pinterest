module UsersHelper
  def show_follow_count(user)
    count = user.followers.count
    if count < 1000
      pluralize(count, "follower")
    else
      "#{(count / 1000.0).round(1)}K followers"
    end
  end
end
