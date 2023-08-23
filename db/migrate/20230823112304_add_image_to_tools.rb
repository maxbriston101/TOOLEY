class AddImageToTools < ActiveRecord::Migration[7.0]
  def change
    add_column :tools, :image, :string
  end
end
