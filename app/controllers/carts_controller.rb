class CartsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @order_items = current_order.order_items
                                .where('quantity > 0')
                                .order("created_at")
  end
end
