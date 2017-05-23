class CreateBoxes < ActiveRecord::Migration[5.1]
  def change
    create_table :boxes do |t|
      t.string :name
      t.text :description
      t.boolean :closed, null: false, default: false
      t.timestamps
      t.index :name, unique: true
      t.index :closed
    end
  end
end
