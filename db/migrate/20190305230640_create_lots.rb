class CreateLots < ActiveRecord::Migration[5.1]
  def change
    create_table :lots do |t|
      t.integer :code
      t.string :location
      t.string :address
      t.decimal :area_land
      t.decimal :area_build
      t.decimal :front_dim
      t.integer :floors_build
      t.string :use_build

      t.timestamps
    end
  end
end
