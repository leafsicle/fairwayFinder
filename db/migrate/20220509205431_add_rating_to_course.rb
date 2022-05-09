class AddRatingToCourse < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :rating, :decimal
  end
end
