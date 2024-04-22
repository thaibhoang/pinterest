class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :boards, dependent: :destroy
  has_many :pins, dependent: :destroy
  has_many :notes, dependent: :destroy
  has_many :saved_pins, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  has_many :received_follows, class_name: "Follow", foreign_key: :followee_id
  has_many :followers, through: :received_follows, source: :follower

  has_many :given_follows, class_name: "Follow", foreign_key: :follower_id
  has_many :followings, through: :given_follows, source: :followee
  has_one :profile
  has_many :likes

  after_create :generate_profile

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user| 
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.full_name = auth.info.name
      user.avatar_url = auth.info.image
      # if you using confirmable and the provider(s) you use validates emails, 
      # uncomment the line below to skip the the confimation emails
      # user.skip_cofirmation!
    end
  end

  protected

  def generate_profile
    self.create_profile()
  end



end
