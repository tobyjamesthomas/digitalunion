class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.references :story, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end
