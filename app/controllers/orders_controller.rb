class OrdersController < ApplicationController
  before_action :authenticate_user!

  def show
    @order_items = OrderItem.where(order_id: params[:id])
  end

  def index
    @orders = Order.all
  end
end
