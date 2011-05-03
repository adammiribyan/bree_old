# encoding: utf-8

module CategoriesHelper
  def parent_category_name
    content_tag :p, :class => "parent-category" do
      "<span>#{@parent_category.name}</span>".html_safe if @parent_category
    end
  end
  
  def child_categories
    if @category.has_children?
      @categories = @category.children
      render @categories
    else
      content_tag :tr, :class => "notice" do
        content_tag :td do
          content_tag :p, "Вы можете добавить дочернюю категорию, нажав на кнопку <span class=\"nobr\">«Новая категория».</span>".html_safe     
        end
      end
    end
  end
  
  def parent_path
    if @category.parent.present?
      @category.parent
    else
      categories_path
    end
  end
end
