class AddAttachmentPictureToRentables < ActiveRecord::Migration
  def self.up
    change_table :rentables do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :rentables, :picture
  end
end
