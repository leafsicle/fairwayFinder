class User < ApplicationRecord
  after_initialize :set_default_role, :if => :new_record?

  devise :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :validatable,
    :omniauthable,
    :omniauth_providers => [
      :google_oauth2,
    ]

  has_many :scorecards, foreign_key: "scorecard_id"
  enum :role, %i[user admin dev]

  validates :email, presence: true, length: { maximum: 30 }, confirmation: { case_sensitive: true }, uniqueness: true, on: :create

  def set_default_role
    self.role ||= :user
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.full_name = auth.info.full_name
      # debugger if user.full_name.nil?
      user.avatar_url = auth.info.image
      user.first_name = auth.info.given_name
      user.last_name = auth.info.family_name
    end
  end
end
