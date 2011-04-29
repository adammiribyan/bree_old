module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end
  
  def livecss
    if AppConfig[:livecss]
      content_tag(:script, "livecss.watchAll();") 
    else
      nil
    end
  end
  
  def body_classes
    @body_classes ||= [controller.controller_name]
    
    if controller.action_name == "new"  || 
       controller.action_name == "edit" || 
       controller.action_name == "index"
      
      @body_classes << "form"
    end
  end
  
  def focus_only_new
    unless controller.action_name == "new"
      false
    else
      true
    end
  end
end
