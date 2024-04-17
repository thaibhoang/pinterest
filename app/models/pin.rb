class Pin < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :notes, dependent: :destroy
end
