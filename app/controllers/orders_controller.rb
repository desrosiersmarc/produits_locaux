class OrdersController < ApplicationController
  before_action :find_order, only: [:update, :show]

  def index
    @orders_validated = Order.all.where(order_status_id: 2)
    @orders_ready = Order.all.where(order_status_id: 3)

  end

  def show

  end


  def update
    @order.order_status_id+=1
    @order.user = current_user
    @order.save
    session[:order_id] = nil
  end

private
  def find_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:status_id, :user)
  end

end
