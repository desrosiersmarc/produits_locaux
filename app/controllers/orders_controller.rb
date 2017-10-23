class OrdersController < ApplicationController
  before_action :find_order, only: [:update, :show]

  def index
    @orders_validated = Order.all.where(order_status_id: 2)
    @orders_in_preparation = Order.all.where(order_status_id: 3)
    @orders_ready = Order.all.where(order_status_id: 4)
    @orders_cancelled = Order.all.where(order_status_id: 6)
  end

  def show

  end


  def update
    if @order.order_status_id == 1
      @order.order_status_id = 2
      @order.delivery_date = session[:delivery_day]
      @order.user = current_user
      session[:order_id] = nil
      @order.save
      # redirect_to order_path
    else
      @order.order_status_id = params[:order][:order_status]
      @order.save
      redirect_to orders_path
    end
  end

private
  def find_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:status_id, :user)
  end

end
