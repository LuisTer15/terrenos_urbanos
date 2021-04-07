class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.integer :code
      t.integer :price
      t.text :location
      t.text :address
      t.integer :area_land
      t.integer :area_build
      t.integer :room_count
      t.integer :bathroom_count

      t.timestamps
    end
  end
end
