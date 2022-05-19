class Hole < ApplicationRecord
  belongs_to :course
  has_many :hole_performances
  
  validates :hole_number, presence: true, numericality: { in: 1..18 }
  validates :par_value, presence: true, numericality: { in: 3..8 }
  validates :course_hcap_val, presence: true, numericality: { in: 1..18 }
  validates :forward_tee_distance, presence: true, numericality: { in: 30..600 }
  validates :mid_tee_distance, presence: true, numericality: { in: 30..600 }
  validates :long_tee_distance, numericality: { in: 30..600 }
  validates :fourth_tee_distance, numericality: { in: 30..600 }
  validates :fifth_tee_distance, numericality: { in: 30..600 }
end
