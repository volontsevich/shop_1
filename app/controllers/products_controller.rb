class ProductsController < ApplicationController


  def index

    @order_item = current_order.order_items.new

    if params[:search]
      @products = Product.search(params[:search])
    elsif params[:price]
      @products = Product.filter(params.slice(:price))
    else
      @products = Product.all
    end

  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

end
