json.extract! saved_pin, :id, :pin_id, :user_id, :board_id, :created_at, :updated_at
json.url saved_pin_url(saved_pin, format: :json)
