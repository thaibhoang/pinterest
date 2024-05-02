class Pin < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :notes, dependent: :destroy
  has_many :saved_pins
  has_many :comments, dependent: :destroy
  has_many :likes, as: :likeable

  def self.get_random_pins(number)
    Pin.all.order(Arel.sql('RANDOM()')).limit(number)
  end
end
