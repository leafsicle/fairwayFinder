class Course < ApplicationRecord
  has_many :holes, dependent: :destroy
  has_many :scorecards

  validates :hole_count, presence: true, numericality: { in: 1..21 }
  validates :name,
            presence: true,
            length: {
              minimum: 2,
              maximum: 30
            },
            uniqueness: true
  validates :street_address, presence: true, length: { minimum: 6, maximum: 30 }
  validates :address_locality, presence: true
  validates :address_region, presence: true
  validates :postal_code, presence: true

  def par_value
    par = holes.sum(:par || 0)
  end

  def get_next_hole_number
    holes.maximum(:number) + 1
  end

  def average_score
    hole_performances.average(:score)
  end

  def scorecard_for(user)
    scorecards.where(user: user).first
  end

  def address
    [street_address, address_locality, address_region, postal_code].compact
      .join(', ')
  end

  def address_with_name
    [name, address].join(': ')
  end

  geocoded_by :address
  after_validation :geocode, :address_locality
  after_validation :par_value
end
