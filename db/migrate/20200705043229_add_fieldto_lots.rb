class AddFieldtoLots < ActiveRecord::Migration[5.1]
  def change
  	add_column :lots, :area_occupation, :decimal
  end
end
