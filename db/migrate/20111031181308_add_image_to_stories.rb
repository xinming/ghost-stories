class AddImageToStories < ActiveRecord::Migration
  def change
    add_column :stories, :image_uid, :string
  end
end
