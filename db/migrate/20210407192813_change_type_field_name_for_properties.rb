class ChangeTypeFieldNameForProperties < ActiveRecord::Migration[5.1]
  def change
  	change_column :properties, :type, :property_type
  end
end
