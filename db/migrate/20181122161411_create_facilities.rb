class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :start
      t.string :number_of_floors
      t.string :ceiling_height
      t.string :underground_garage
      t.text :description

      t.timestamps
    end
  end
end
