class Pin < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :notes, dependent: :destroy
  has_many :saved_pins, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy

  validates :title, presence: true, length: { maximum: 200 }
  validates :description, presence: true, length: { maximum: 500 }

  def self.get_random_pins(number)
    Pin.order(Arel.sql('RANDOM()')).limit(number)
  end

  def self.skip_some_pins_then_get_some_pins(num1, num2)
    Pin.includes([:image_attachment, { saved_pins: :board }]).where("id >= ?", num1).limit(num2)
  end

  def image?
    image.attached? || image_url.present?
  end
end
