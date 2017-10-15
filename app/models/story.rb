class Story < ActiveRecord::Base
  belongs_to :user
  belongs_to :status
  has_many :ideas
  has_many :story_tags

  attr_accessor :tag_ids
end
