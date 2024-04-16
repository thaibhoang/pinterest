class CopyBoardFromPinToSavedPin < ActiveRecord::Migration[7.1]
  def up
    Pin.all.each do |pin|
      SavedPin.create(
        board_id: pin.board_id,
        user_id: pin.user_id,
        pin_id: pin.id
      )
    end
    remove_column :pins, :board_id
  end
end
