class Pin < ApplicationRecord
  belongs_to :user
  belongs_to :board
  has_one_attached :image
  has_many :notes, dependent: :destroy
end
