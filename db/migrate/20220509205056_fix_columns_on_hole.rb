class FixColumnsOnHole < ActiveRecord::Migration[7.0]
  def change
    rename_column :holes, :center_green_lat, :latitude
    rename_column :holes, :center_green_long, :longitude
    change_column :holes, :latitude, :decimal
    change_column :holes, :longitude, :decimal
  end
end
