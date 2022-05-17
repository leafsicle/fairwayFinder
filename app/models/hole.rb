class Hole < ApplicationRecord
  belongs_to :course, foreign_key: 'course_id'
  has_many :hole_performances
  
  validates :hole_number, presence: true, numericality: { in: 1..18 }, uniqueness: true
  validates :par_value, presence: true, numericality: { in: 3..8 }
  validates :course_hcap_val, presence: true, numericality: { in: 1..18 }
  validates :forward_tee_distance, presence: true, numericality: { in: 30..600 }
  validates :mid_tee_distance, presence: true, numericality: { in: 30..600 }
  validates :long_tee_distance, presence: true, numericality: { in: 30..600 }

  def course_hole_count
    p hole.course.hole_count
  end
end
