class CreateBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :boards do |t|
      t.string :name
      t.text :description
      t.boolean :keep_secret, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
