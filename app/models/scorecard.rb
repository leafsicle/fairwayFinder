class Scorecard < ApplicationRecord
  belongs_to :course
  has_many :holes, through: :course
  has_many :hole_performances, :dependent => :destroy
  belongs_to :user 
end
