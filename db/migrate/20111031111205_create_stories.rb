class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.string :source
      t.text :story
      t.string :writer
      t.integer :genre_id

      t.timestamps
    end
  end
end
