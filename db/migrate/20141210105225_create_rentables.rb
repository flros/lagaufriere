class CreateRentables < ActiveRecord::Migration
  def change
    create_table :rentables do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
