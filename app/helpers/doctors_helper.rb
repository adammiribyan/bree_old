module DoctorsHelper
  def float_to_right_unless_new
    unless @controller.action_name == "new"
      "small right"
    end
  end
  
  def photo_of(object)
    if object.photo.present?
      image_tag object.photo_url(:thumb), :width => "65", :height => "65", :class => "photo"
    else
      image_tag "avatar.png", :width => "65", :height => "65", :class => "photo"
    end
  end
end
