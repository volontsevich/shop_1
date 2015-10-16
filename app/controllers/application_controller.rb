class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_order

  def current_order
    begin
      if !session[:order_id].nil?
        Order.find(session[:order_id])
      else
        Order.new
      end
    rescue ActiveRecord::RecordNotFound
      Order.new
    end
  end

end
