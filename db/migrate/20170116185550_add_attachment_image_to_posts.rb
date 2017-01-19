class AddAttachmentImageToPosts < ActiveRecord::Migration
  def self.up
    change_table :catposts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :catposts, :image
  end
end
