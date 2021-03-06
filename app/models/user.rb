class User < ApplicationRecord
  after_initialize :set_default_role, :if => :new_record?
  has_many :scorecards, foreign_key: "scorecard_id"
  has_many :hole_performances, through: :scorecards
  enum :role, %i[user admin dev]

  devise :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :validatable,
    :omniauthable,
    :omniauth_providers => [
      :google_oauth2,
    ]

  validates :email, presence: true, length: { maximum: 30 }, confirmation: { case_sensitive: true }, uniqueness: true, on: :create

  def set_default_role
    self.email == "cookem529@gmail.com" ? self.role = "dev" : self.role = "user"
  end

  def elevate_to_dev
    self.role = "dev"
  end

  def reduce_to_user
    self.role = "user"
  end

  def self.from_omniauth(auth)
    user = find_or_initialize_by(provider: auth.provider, uid: auth.uid)
    user.email = auth.info.email
    user.password = Devise.friendly_token[0, 20]
    user.avatar_url = auth.info.image
    user.full_name = auth.info.full_name
    user.first_name = auth.info.given_name
    user.last_name = auth.info.family_name
    user.save
    user
  end
end
