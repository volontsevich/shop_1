class ProductsController < ApplicationController
  respond_to :html,:json

  def index

    @order_item = current_order.order_items.new

    if params[:search]
      @products = Product.search(params[:search])
    elsif params[:category]
      @products = Product.filter(params.slice(:category))
    elsif params[:amount]
      @products = Product.filter(params.slice(:amount))
    else
      @products = Product.all
    end
    respond_with(@products)
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

end
