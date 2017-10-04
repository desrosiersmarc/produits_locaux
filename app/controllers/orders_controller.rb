class OrdersController < ApplicationController
  skip_before_action :authenticate_user!

  def update
    current_order.order_status_id+=1
  end

end
