json.extract! comment, :id, :body, :pin_id, :user_id, :comment_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
