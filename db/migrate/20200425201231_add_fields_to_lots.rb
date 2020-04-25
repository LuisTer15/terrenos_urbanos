class AddFieldsToLots < ActiveRecord::Migration[5.1]
  def change
    add_column :lots, :left_dim, :decimal
    add_column :lots, :right_dim, :decimal
    add_column :lots, :back_dim, :decimal
    add_column :lots, :ref_catastral, :string
    add_column :lots, :pot_polygon, :string
    add_column :lots, :pot_treatment, :string
    add_column :lots, :pot_treatment_level, :string
    add_column :lots, :pot_tipology, :string
    add_column :lots, :pot_front_align_lb_lc, :decimal
    add_column :lots, :pot_left_align_lb_lc, :decimal
    add_column :lots, :pot_right_align_lb_lc, :decimal
    add_column :lots, :pot_back_align_lb_lc, :decimal
    add_column :lots, :pot_road_name, :string
  end
end
