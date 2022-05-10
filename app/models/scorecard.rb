class Scorecard < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :hole_performance

  validates :user, presence: true
  validates :course, presence: true
  validates :hole_performance, presence: true
end

