class AddStatusToStories < ActiveRecord::Migration
  def change
    add_reference :stories, :status, index: true, foreign_key: true
  end
end
