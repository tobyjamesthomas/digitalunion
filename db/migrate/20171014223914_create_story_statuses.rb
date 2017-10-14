class CreateStoryStatuses < ActiveRecord::Migration
  def change
    create_table :story_statuses do |t|
      t.references :story, index: true, foreign_key: true
      t.references :status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
