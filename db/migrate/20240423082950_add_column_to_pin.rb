class AddColumnToPin < ActiveRecord::Migration[7.1]
  def change
    add_column :pins, :image_url, :string
  end
end
