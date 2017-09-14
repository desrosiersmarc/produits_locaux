class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    delivery_day
    @categories = Category.all.map {|category| category if !category.has_parent? }.compact
  end

  def delivery_day
    delivery_day = Time.now
    7.times do
      if delivery_day.wday == 5
        # @delivery_day = delivery_day.strftime("%A %d")
        @delivery_day = delivery_day
      else
        delivery_day+=1.days
      end
    end
  end

end
