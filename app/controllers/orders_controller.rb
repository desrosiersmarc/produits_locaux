class OrdersController < ApplicationController
  before_action :find_order, only: [:update, :show]

  def index
    @orders = Order.all.where("delivery_date > ?", Time.now - 10.day)
    @orders_validated = @orders.where(order_status_id: 2)
    @orders_in_preparation = @orders.where(order_status_id: 3)
    @orders_ready = @orders.where(order_status_id: 4)
    @orders_cancelled = @orders.where(order_status_id: 6)
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
      OrderMailer.validated_order(current_user).deliver_now
    else
      @order.order_status_id = params[:order][:order_status]
      if @order.order_status_id == 4
        OrderMailer.ready_order(current_user).deliver_now
      end
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
