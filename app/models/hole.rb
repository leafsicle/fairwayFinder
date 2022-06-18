class Hole < ApplicationRecord
  belongs_to :course
  has_many :scorecards, through: :course
  has_many :hole_performances

  # def set_default_role
  #   self.email == "cookem529@gmail.com" ? self.role = "dev" : self.role = "user"
  # end

  validates :hole_number, presence: true, numericality: { in: 1..18 }
  validates :par_value, presence: true, numericality: { in: 3..8 }
  validates :first_tee_distance, presence: true, numericality: { in: 10..600 }
end
