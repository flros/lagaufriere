class CreateTorents < ActiveRecord::Migration
  def change
    create_table :torents do |t|

      t.timestamps
    end
  end
end
