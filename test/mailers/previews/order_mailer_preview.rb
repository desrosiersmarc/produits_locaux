# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  def validated_order()
    OrderMailer.validated_order(User.last)
  end
end
