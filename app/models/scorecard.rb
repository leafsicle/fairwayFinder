class Scorecard < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :hole_performance
  has_many :holes, through: :course

  validates :user, presence: true
  validates :course_id, presence: true
  validates :hole_performance, presence: true
end

