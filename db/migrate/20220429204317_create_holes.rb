class CreateHoles < ActiveRecord::Migration[7.0]
  def change
    create_table :holes do |t|
      t.integer :hole_number
      t.integer :par_value
      t.decimal :latitude
      t.decimal :longitude
      t.integer :course_hcap_val
      t.integer :first_tee_distance
      t.integer :second_tee_distance
      t.integer :third_tee_distance
      t.integer :fourth_tee_distance
      t.integer :fifth_tee_distance
      t.belongs_to :course, null: false
      t.timestamps
    end
  end
end
