class RemoveCourseFromScorecards < ActiveRecord::Migration[7.0]
  def up
    remove_column :scorecards, :course, :int
  end
  def down 
    add_column :scorecards, :course, :int
  end
end


