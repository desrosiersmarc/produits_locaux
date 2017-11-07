class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :update, :destroy]

  def create
    @order = current_order
    if  @order.products.where(id: params[:order_item][:product_id]).count == 0
      @order_item = @order.order_items.new(order_item_params)
    else
      order_item = @order.order_items.where(product_id: params[:order_item][:product_id])[0]
      order_item.quantity+=1
      order_item.save
    end
    @order.save

    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
                          .where('quantity > 0')
                          .order("created_at")
    if @order_item.save
      respond_to do |format|
        format.html {redirect_to cart_path}
        format.js
      end
    end

  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
