class CreateHolePerformances < ActiveRecord::Migration[7.0]
  def change
    create_table :hole_performances do |t|
      t.integer :strokes
      t.integer :greenside_bunker_count
      t.integer :fairway_bunker_count
      t.integer :water_penalty_count
      t.integer :out_of_bounds_penalty
      t.integer :penalty_stroke_count
      t.integer :putts
      t.belongs_to :scorecard, null: false, foreign_key: true
      t.references :hole, null: false, foreign_key: true

      t.timestamps
    end
  end
end
