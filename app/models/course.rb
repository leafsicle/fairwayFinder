class Course < ApplicationRecord
  has_many :holes, :dependent => :delete_all
  has_many :scorecards 

  validates :hole_count, presence: true, numericality: { in: 1..21 }
  validates :course_name, presence: true, length: {minimum:2, maximum:30}, uniqueness: true
  validates :website_url, presence: true, length: {minimum:6, maximum:30}
  validates :hour_open, presence: true, numericality: { in: 0..23 }
  validates :hour_close, presence: true,numericality: { in: 0..23 }
  validates :street_address, presence: true, length: {minimum:6, maximum:30}
  validates :address_locality, presence: true
  validates :address_region, presence: true
  validates :postal_code, presence: true


end