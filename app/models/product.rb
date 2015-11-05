class Product < ActiveRecord::Base
  include Filterable

  has_many :images
  has_many :order_items
  belongs_to :product_category

  validates :name, presence: true, uniqueness: true
  validates :descr, presence: true
  validates :product_category, presence: true

  default_scope {
    where(available: true)
  }

  def self.search(query)
    where "descr like ? or name like ?", "%#{query}%", "%#{query}%"
  end

  def self.category(query)
    if query=="plant"
      where "product_category_id = 1"
    elsif query=="bonsay"
      where "product_category_id = 2"
    elsif query=="flower"
      where "product_category_id = 3"
    else
      where "1=1"

    end


  end

  def self.amount(query)
    a=query.index("-")
    b=query[1..a-1]
    c=query[a..query.size]
    c=c[c.index("$")+1..c.size]
    if query.index("$")==0
      where "price > ? and price < ?", b, c
    else
      where "1=1"
    end
  end
end
