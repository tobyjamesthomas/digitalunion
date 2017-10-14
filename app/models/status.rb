class Status < ActiveRecord::Base
  has_many :story_statuses
end
