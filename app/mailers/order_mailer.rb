class OrderMailer < ApplicationMailer
  def validated_order(user)
    @user = user
    mail(to: @user.email, subject: 'Prise en compte de votre commande')
  end
end
