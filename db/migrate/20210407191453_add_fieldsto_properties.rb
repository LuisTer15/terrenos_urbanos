class AddFieldstoProperties < ActiveRecord::Migration[5.1]
  def change
  	add_column :properties, :type, :string
  	add_column :properties, :stratus, :integer
  end
end
