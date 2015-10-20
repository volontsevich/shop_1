class Product < ActiveRecord::Base
  has_many :images
  has_many :order_items
  validates :name, presence: true, uniqueness: true
  validates :descr, presence: true

  default_scope {
    where(available: true)
  }

  def self.search(query)
    where "descr like ? or name like ?","%#{query}%","%#{query}%"
  end
end
