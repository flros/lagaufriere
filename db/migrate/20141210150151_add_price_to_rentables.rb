class AddPriceToRentables < ActiveRecord::Migration
  def change
    add_column :rentables, :price, :integer
  end
end
