json.extract! board, :id, :cover, :name, :description, :keep_secret, :user_id, :created_at, :updated_at
json.url board_url(board, format: :json)
json.cover url_for(board.cover)
