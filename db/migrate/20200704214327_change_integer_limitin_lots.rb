class ChangeIntegerLimitinLots < ActiveRecord::Migration[5.1]
  def change
  	change_column :lots, :price, :integer, limit: 8 
  end
end
