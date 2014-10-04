class AddAttachmentPhoto2ToMicroposts < ActiveRecord::Migration
  def self.up
    change_table :microposts do |t|
      t.attachment :photo2
    end
  end

  def self.down
    remove_attachment :microposts, :photo2
  end
end
