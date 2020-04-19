class CreateDestination < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :zip
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end