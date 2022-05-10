class AddCourseIdToScorecard < ActiveRecord::Migration[7.0]
  def change
    add_column :scorecards, :course, :integer
    add_reference :scorecards, :course, null: false, foreign_key: true
  end
end
