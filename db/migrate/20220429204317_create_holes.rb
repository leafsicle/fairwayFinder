class CreateHoles < ActiveRecord::Migration[7.0]
  def change
    create_table :holes do |t|
      t.integer :hole_number
      t.integer :course_id
      t.integer :par_value
      t.integer :course_hcap_val
      t.point :center_of_green
      t.integer :forward_tee_distance
      t.integer :mid_tee_distance
      t.integer :long_tee_distance
      t.integer :fourth_tee_distance
      t.integer :fifth_tee_distance
      t.belongs_to :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
