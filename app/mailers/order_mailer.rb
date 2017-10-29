class OrderMailer < ApplicationMailer
  def validated_order(user)
    @user = user
    @order_items = @user.orders.last.order_items.where('quantity >0')
    mail(to: @user.email, subject: 'Prise en compte de votre commande')
  end
end
