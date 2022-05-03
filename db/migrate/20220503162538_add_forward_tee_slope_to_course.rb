class AddForwardTeeSlopeToCourse < ActiveRecord::Migration[7.0]
  def up
    change_table :courses do |t|
      t.integer :forward_tee_slope
      t.float :forward_tee_rating
      t.integer :mid_tee_slope
      t.float :mid_tee_rating
      t.integer :long_tee_slope
      t.float :long_tee_rating
      t.integer :fourth_tee_slope
      t.float :fourth_tee_rating
      t.integer :fifth_tee_slope
      t.float :fifth_tee_rating
    end
  end
  def def down 
    change_table :courses do |t|
      t.remove :forward_tee_slope, :forward_tee_rating, :mid_tee_slope, :mid_tee_rating, :long_tee_slope, :long_tee_rating, :fourth_tee_slope, :fourth_tee_rating, :fifth_tee_slope, :fifth_tee_rating
    end
  end
end
