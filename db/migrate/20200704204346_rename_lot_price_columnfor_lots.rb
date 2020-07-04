class RenameLotPriceColumnforLots < ActiveRecord::Migration[5.1]
  def change
  	rename_column :lots, :lot_price, :price
  end
end
