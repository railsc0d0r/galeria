class AddAttachmentAttachementToPictures < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :attachement
    end
  end

  def self.down
    remove_attachment :pictures, :attachement
  end
end
