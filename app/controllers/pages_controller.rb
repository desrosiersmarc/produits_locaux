class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @categories = Category.all.map {|category| category if !category.has_parent? }.compact
    @order_items = current_order.id.nil? ? '-' : current_order.order_items
  end
end
