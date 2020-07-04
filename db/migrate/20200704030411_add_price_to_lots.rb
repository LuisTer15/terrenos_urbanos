class AddPriceToLots < ActiveRecord::Migration[5.1]
  def change
    add_column :lots, :lot_price, :integer
  end
end
