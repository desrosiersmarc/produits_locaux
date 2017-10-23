module ApplicationHelper
  def helper_picture_tag(thing)
    if thing.photo?
      cl_image_tag(thing.photo.path, width: 250)
    else
      image_tag("without_picture.jpg", width: 250)
    end
  end

  def helper_picture_url(thing)
    if thing.photo?
      cl_image_path(thing.photo.path, width: 250)
    else
      image_path("without_picture.jpg", width: 250)
    end
  end

  def order_items_count
    current_order.order_items.collect{|oi| oi.quantity}.sum
  end

  def helper_delivery_day
    if Time.now.hour >= 20
      delivery_day = Time.now + 3.days
    else
      delivery_day = Time.now + 2.days
    end

    7.times do
      if delivery_day.wday == 5
        session[:delivery_day] = delivery_day + 4
        return delivery_day
      else
        delivery_day+=1.days
        session[:delivery_day] = delivery_day
        return delivery_day
      end
    end
  end

end
