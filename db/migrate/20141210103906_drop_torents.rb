class DropTorents < ActiveRecord::Migration
  def up
    drop_table :torents
  end


end
