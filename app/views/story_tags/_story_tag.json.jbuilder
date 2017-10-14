json.extract! story_tag, :id, :story_id, :tag_id, :created_at, :updated_at
json.url story_tag_url(story_tag, format: :json)
