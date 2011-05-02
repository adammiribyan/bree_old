# encoding: utf-8

module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end
  
  def body_classes
    @body_classes ||= [controller.controller_name]
    
    if controller.action_name == "new"  || 
       controller.action_name == "edit" || 
       controller.controller_name == "categories"
      
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
  
  def link_to_delete(object)
    content_tag :span, :class => "delete" do
      link_to content_tag(:span, "", :class => "icon"), object, :confirm => 'Вы уверены?', :method => :delete
    end
  end
  
  def link_to_edit(model, object)
    link_to "Правка", send("edit_#{model}_path", object), :class => "admin"
  end
end
