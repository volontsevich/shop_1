class ProductsController < ApplicationController


  def index

    @order_item = current_order.order_items.new
    @search = Product.search do
      fulltext 'Adenium'
    end
    @products = @search.result
    puts @search.result
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

end
