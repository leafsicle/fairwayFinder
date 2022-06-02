class FixGreenColumnOnHoleTable < ActiveRecord::Migration[7.0]
  def up
    change_table :holes do |t|
      t.float :center_green_lat
      t.float :center_green_long
    end
  end

  def def(down)
    change_table :holes do |t|
      t.remove :center_green_lat
      t.remove :center_green_long
    end
  end
end
