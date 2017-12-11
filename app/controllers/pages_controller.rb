class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @dairy_products = Category.find(3)
    @meats = Category.find(1)
    @breds = Category.find(4)
    @pastries = Category.find(2)
    @takeaway = Category.find(5)
  end

  def my_orders
    @orders = Order.all.where(user: current_user).order("order_status_id")
  end

end
