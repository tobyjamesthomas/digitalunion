class StoryStatus < ActiveRecord::Base
  belongs_to :story
  belongs_to :status
end
