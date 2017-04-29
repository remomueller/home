class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :box
      t.string :name
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
