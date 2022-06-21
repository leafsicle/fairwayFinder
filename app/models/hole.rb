class Hole < ApplicationRecord
  belongs_to :course
  has_many :scorecards, through: :course
  has_many :hole_performances

  validates :par, presence: true, numericality: { in: 1..8 }
  validates :first_tee_distance, presence: true, numericality: { in: 10..600 }
end
