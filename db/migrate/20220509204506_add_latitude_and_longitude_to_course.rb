class AddLatitudeAndLongitudeToCourse < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :latitude, :decimal
    add_column :courses, :longitude, :decimal
  end
end
