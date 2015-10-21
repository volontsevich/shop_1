class Product < ActiveRecord::Base
  include Filterable
  has_many :images
  has_many :order_items
  validates :name, presence: true, uniqueness: true
  validates :descr, presence: true

  default_scope {
    where(available: true)
  }

  def self.search(query)
    where "descr like ? or name like ?", "%#{query}%", "%#{query}%"
  end

  def self.price(query)
    if query=="low"
      where "price < 3"
    elsif query=="high"
      where "price > 3"
    else
      where "1=1"

    end

  end
end
