class OrdersController < ApplicationController
  before_action :authenticate_user!

  def show
    @orders = Order.all
  end
end
