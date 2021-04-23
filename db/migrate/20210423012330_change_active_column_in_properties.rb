class ChangeActiveColumnInProperties < ActiveRecord::Migration[5.1]
  def change
  	change_column :properties, :active, :boolean, null: false, default: false
  end
end
