class AddNormativeToLots < ActiveRecord::Migration[5.1]
  def change
    add_column :lots, :base_density, :decimal
    add_column :lots, :base_floors, :integer
    add_column :lots, :max_density, :decimal
    add_column :lots, :max_floors, :integer
  end
end
