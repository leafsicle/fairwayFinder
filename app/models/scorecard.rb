class Scorecard < ApplicationRecord
  belongs_to :course
  has_many :holes, through: :course
  has_many :hole_performances, :dependent => :destroy, inverse_of: "scorecard"
  belongs_to :user
end
