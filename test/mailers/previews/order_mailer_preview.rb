# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  def validated_order()
    @user = User.last
    @order = Order.last
    @order_items = @user.orders.last.order_items.where('quantity >0')
    OrderMailer.validated_order(@user)
  end


  def ready_order()
    @user = User.last
    @order = Order.last
    @order_items = @user.orders.last.order_items.where('quantity >0')
    OrderMailer.ready_order(@user)
  end
end
