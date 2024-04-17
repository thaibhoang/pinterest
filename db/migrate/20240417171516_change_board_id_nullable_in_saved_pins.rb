class ChangeBoardIdNullableInSavedPins < ActiveRecord::Migration[7.1]
  def change
    change_column :saved_pins, :board_id, :bigint, null: true
  end
end
