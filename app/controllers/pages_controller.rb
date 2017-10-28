class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @categories = Category.all.map {|category| category if !category.has_parent? }.compact
  end

  def my_orders
    @orders = Order.all.where(user: current_user).order("order_status_id")
  end

end
