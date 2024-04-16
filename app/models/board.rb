class Board < ApplicationRecord


  belongs_to :user
  has_one_attached :cover

  has_many :pins

  def unboard_pin
    pins.each do |pin| 
      pin.board = nil
    end
  end
end
