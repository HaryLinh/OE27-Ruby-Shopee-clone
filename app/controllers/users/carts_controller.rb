class Users::CartsController < ApplicationController
  def index
    @product_colors = ProductColor.where(id: session[:order].keys).includes :product, :color
    @order_shipping =  current_user.orders.by_status 1
    @order_checked =  current_user.orders.by_status 3
    @index = 0
  end
end
