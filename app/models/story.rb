class Story < ActiveRecord::Base
  belongs_to :user
  has_many :ideas
  has_many :story_tags
  has_one :story_status
end
