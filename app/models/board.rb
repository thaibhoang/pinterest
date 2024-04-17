class Board < ApplicationRecord

  belongs_to :user
  has_one_attached :cover
  has_many :saved_pins, dependent: :nullify

end
