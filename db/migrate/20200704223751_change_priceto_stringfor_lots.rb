class ChangePricetoStringforLots < ActiveRecord::Migration[5.1]
  def change
  	change_column :lots, :price, :string
  end
end
