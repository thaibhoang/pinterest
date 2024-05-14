class Pin < ApplicationRecord
  paginates_per 50
  belongs_to :user
  has_one_attached :image
  has_many :notes, dependent: :destroy
  has_many :saved_pins, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :root_comments, -> { where(parent_id: nil) }, class_name: "Comment"
  has_many :likes, as: :likeable, dependent: :destroy

  validates :title, presence: true, length: { maximum: 200 }
  validates :description, presence: true, length: { maximum: 500 }

  def self.get_random_pins(number)
    Pin.order(Arel.sql('RANDOM()')).limit(number)
  end

  def self.skip_some_pins_then_get_some_pins(milestone, next_page, pins_per_page)
    if next_page
      Pin.includes([:image_attachment, { saved_pins: :board }]).where("id >= ?", milestone).limit(pins_per_page)
    else
      Pin.includes([:image_attachment, { saved_pins: :board }])
         .where("id < ?", milestone)
         .order(id: :desc)
         .limit(pins_per_page)
         .reverse
    end
  end

  def image?
    image_url.present? || image.attached?
  end
end
