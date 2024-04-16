class CreateSavedPins < ActiveRecord::Migration[7.1]
  def change
    create_table :saved_pins do |t|
      t.references :pin, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :board, null: true, foreign_key: true

      t.timestamps
    end
  end
end
