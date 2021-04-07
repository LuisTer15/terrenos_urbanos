class FixFieldTypeForProperties < ActiveRecord::Migration[5.1]
  def change
  	change_column :properties, :type, :string
  end
end
