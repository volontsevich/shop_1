class ProductsController < ApplicationController
  respond_to :html, :json
  helper_method :stroka

  def index

    @order_item = current_order.order_items.new
    @products = Product.all.order(:name)
    if params[:search]
      @products = @products.search(params[:search])
    elsif params[:amount] and params[:category]
      @products = @products.filter(params.slice(:amount, :category)).order(:price)
    elsif params[:amount]
      @products = @products.filter(params.slice(:amount)).order(:price)
    elsif params[:category]
      @products = @products.filter(params.slice(:category)).order(:name)
    else
      @products = Product.all.order(:name)
    end
    respond_with(@products)
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

  def stroka(path, query)

    #= May be realized via jQuery also, placed here to learn helper_method
    pos=path.length+1
    if path.index("?").nil?
      newpath=path+"?"
    else
      if path.index("category=").nil?
        newpath=path+"&"
      else
        pos=path.index("?")+1
        newpath=path[0..pos-1]
      end
    end
    pos=newpath.length
    return newpath.insert(pos, query)
  end

end
