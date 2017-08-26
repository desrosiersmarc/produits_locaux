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

end
