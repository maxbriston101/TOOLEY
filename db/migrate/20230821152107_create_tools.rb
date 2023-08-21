class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.integer :price
      t.text :description
      t.string :category
      t.string :tool_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
