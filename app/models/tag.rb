class Tag < ActiveRecord::Base
  has_many :story_tags
end
