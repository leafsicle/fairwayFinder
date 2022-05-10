class HolePerformance < ApplicationRecord
  belongs_to :scorecard
  has_one :hole
end
