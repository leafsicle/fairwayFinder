class Scorecard < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_one :user
end
