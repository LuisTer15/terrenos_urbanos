class AddDescriptionToBLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :description, :text
  end
end
