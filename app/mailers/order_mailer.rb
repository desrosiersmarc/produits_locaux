class OrderMailer < ApplicationMailer
  def validated_order(user)
    @user = user
    @order = Order.last
    @order_items = @user.orders.last.order_items.where('quantity >0')
    mail(to: @user.email, subject: "Prise en compte de votre commande n°#{@order.id}")
  end

  def ready_order(user)
    @user = user
    @order = Order.last
    @order_items = @user.orders.last.order_items.where('quantity >0')
    mail(to: @user.email, subject: "Votre commande n°#{@order.id} est prête")
  end
end
