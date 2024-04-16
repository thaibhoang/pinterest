class Pin < ApplicationRecord
  belongs_to :user
  belongs_to :board
  has_one_attached :image
  has_one :note, dependent: :destroy
end
