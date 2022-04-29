class User < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 20 }
  validates :last_name, presence: true, length: { maximum: 20 }
  validates :username, presence: true, length: { maximum: 20 }, uniqueness: true
  validates :email, presence: true, length: { maximum: 30 }, uniqueness: true, on: :create
  validates :user_type_id, presence: true, numericality: true
end
