class AddAttachmentImg1ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :img1
    end
  end

  def self.down
    remove_attachment :products, :img1
  end
end
