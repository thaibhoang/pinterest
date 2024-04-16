json.extract! note, :id, :user_id, :pin_id, :content, :created_at, :updated_at
json.url note_url(note, format: :json)
