class AddImagePathColumnToBlogs < ActiveRecord::Migration[5.1]
  def change
  	add_column :blogs, :image_path, :string
  end
end
