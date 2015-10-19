class AddAttachmentImg2ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :img2
    end
  end

  def self.down
    remove_attachment :products, :img2
  end
end
