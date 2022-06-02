class Scorecard < ApplicationRecord
  belongs_to :course
  has_many :holes, through: :course
  has_many :hole_performances
  has_one :user
  
  def set_user_id
    :user.id = 1
    p "beacon for a ":user
  end

  before_save :set_user_id
end

