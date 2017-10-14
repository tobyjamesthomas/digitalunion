json.extract! story_status, :id, :story_id, :status_id, :created_at, :updated_at
json.url story_status_url(story_status, format: :json)
