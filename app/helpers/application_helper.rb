module ApplicationHelper
  def helper_picture_tag(thing)
    if thing.photo?
      cl_image_tag(thing.photo.path)
    else
      image_tag("without_picture.jpg")
    end
  end
end
