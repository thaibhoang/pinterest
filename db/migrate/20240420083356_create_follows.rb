class CreateFollows < ActiveRecord::Migration[7.1]
  def change
    create_table :follows do |t|
      t.references :follower, null: false, foreign_key: {to_table: "users", foreign_key: :follower_id}  
      t.references :followee, null: false, foreign_key: {to_table: "users", foreign_key: :followee_id} 

      t.timestamps
    end
  end
end
