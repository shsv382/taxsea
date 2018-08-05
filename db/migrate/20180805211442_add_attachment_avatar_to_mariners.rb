class AddAttachmentAvatarToMariners < ActiveRecord::Migration[5.2]
  def self.up
    change_table :mariners do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :mariners, :avatar
  end
end
