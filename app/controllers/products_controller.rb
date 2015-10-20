class ProductsController < ApplicationController


  def index

    @order_item = current_order.order_items.new

    if params[:search]
      @products = Product.search(params[:search])
    else
      @products = Product.all
    end

  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

end
