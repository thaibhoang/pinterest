class CreatePins < ActiveRecord::Migration[7.1]
  def change
    create_table :pins do |t|
      t.string :title
      t.text :description
      t.text :link
      t.references :user, null: false, foreign_key: true
      t.references :board, null: true, foreign_key: true

      t.timestamps
    end
  end
end
