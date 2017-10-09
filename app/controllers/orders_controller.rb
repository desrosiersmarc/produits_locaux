class OrdersController < ApplicationController
  before_action :find_order

  def update
    @order.order_status_id+=1
    @order.save
    session[:order_id] = nil
  end

private
  def find_order
    @order = Order.find(params[:id])
  end

end
