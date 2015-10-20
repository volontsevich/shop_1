class Product < ActiveRecord::Base
  has_many :images
  has_many :order_items
  default_scope {
    where(available: true)
  }
  searchable do
    text :descr
    integer :price
    boolean :available
  end

end
