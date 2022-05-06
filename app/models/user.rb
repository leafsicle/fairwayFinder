class User < ApplicationRecord
  has_many :scorecards, foreign_key: "scorecard_id"

  validates :first_name, presence: true, length: { maximum: 20 }
  validates :last_name, presence: true, length: { maximum: 20 }
  validates :username, presence: true, length: { maximum: 20 },confirmation: { case_sensitive: true }, uniqueness: true
  validates :email, presence: true, length: { maximum: 30 }, confirmation: { case_sensitive: true }, uniqueness: true, on: :create
  validates :user_type_id, presence: true, numericality: true
end
