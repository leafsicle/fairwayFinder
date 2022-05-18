class Course < ApplicationRecord
  has_many :holes, :dependent => :destroy, inverse_of: 'course'
  has_many :scorecards

  validates :hole_count, presence: true, numericality: { in: 1..21 }
  validates :course_name, presence: true, length: { minimum: 2, maximum: 30 }, uniqueness: true
  validates :website_url, presence: true, length: { minimum: 6, maximum: 80 }
  validates :hour_open, presence: true, numericality: { in: 0..23 }
  validates :hour_close, presence: true, numericality: { in: 0..23 }
  validates :street_address, presence: true, length: { minimum: 6, maximum: 30 }
  validates :address_locality, presence: true
  validates :address_region, presence: true
  validates :postal_code, presence: true
  
  # work on activation stuff later
  # def deactivate
  #   course.active? 
  # end

  def course_par
    holes.reduce(0) { |sum, hole| sum + hole.par_value }
  end

  def address
    [street_address, address_locality, address_region, postal_code ].compact.join(', ')
  end

  def remaining_holes
    hole_arr = []
    holes.each do |hole|
      unless hole.hole_number.nil? 
        hole_arr << hole.hole_number
      end
    end
    hole_arr.sort!
  end

  geocoded_by :address
  after_validation :geocode, :course_par, :address
end