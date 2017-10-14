class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.integer :score, :default => 0
      t.string :body

      t.timestamps null: false
    end
  end
end

#TEST
