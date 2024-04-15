json.extract! pin, :id, :image, :title, :description, :link, :user_id, :board_id, :created_at, :updated_at
json.url pin_url(pin, format: :json)
json.image url_for(pin.image)
