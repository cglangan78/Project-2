class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.text :comments
      t.string :location
      t.integer :longitude
      t.integer :latitude

      t.timestamps null: false
    end
  end
end
