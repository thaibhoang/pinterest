class Board < ApplicationRecord
  belongs_to :user
  has_one_attached :cover
  has_many :saved_pins, dependent: :nullify

  validates :name, uniqueness: true, presence: true

  def not_empty?
    saved_pins.present?
  end
end
