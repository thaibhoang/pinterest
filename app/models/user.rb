class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
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


  after_create :generate_profile

  protected

  def generate_profile
    self.create_profile()
  end

end
