json.extract! story, :id, :title, :score, :body, :created_at, :updated_at
json.url story_url(story, format: :json)
