class HolePerformance < ApplicationRecord
  belongs_to :scorecard
  has_one :hole

  validates :website_url, presence: true, length: { minimum: 6, maximum: 80 }
  validates :strokes, presence: true, length: { in: 1..12 }
  validates :greenside_bunker_count, presence: true, length: { in: 0..12 }
  validates :fairway_bunker_count, presence: true, length: { in: 0..12 }
  validates :water_penalty_count, presence: true, length: { in: 0..12 }
  validates :out_of_bounds_penalty, presence: true, length: { in: 0..12 }
  validates :penalty_stroke_count, presence: true, length: { in: 0..12 }

  @stroke_count = 0
  def count_strokes
    @stroke_count = :strokes + 
    :greenside_bunker_count + 
    :fairway_bunker_count + 
    :water_penalty_count + 
    :out_of_bounds_penalty + 
    :penalty_stroke_count 
  end
  
  before_save :count_strokes
end
