class AddCourseNameToCourse < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :course_name, :string
  end
end
