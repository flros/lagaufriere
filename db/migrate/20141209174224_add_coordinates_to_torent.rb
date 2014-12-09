class AddCoordinatesToTorent < ActiveRecord::Migration
  def change
    add_column :torents, :latitude, :float
    add_column :torents, :longitude, :float
  end
end
