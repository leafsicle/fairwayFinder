class Course < ApplicationRecord
  has_many :holes, class_name: "Hole", foreign_key: "course_id"
end
