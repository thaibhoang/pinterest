class SavedPin < ApplicationRecord
  belongs_to :pin
  belongs_to :user
  belongs_to :board, optional: true

  before_update :check_unique_in_board
  before_create :check_unique_in_board

  def check_unique_in_board
    return unless pin.saved_pins.find_by(board_id:, user_id:)

    errors.add(:base, "Pin in this board already")
    throw(:abort)
  end
end
