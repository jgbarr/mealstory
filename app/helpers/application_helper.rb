module ApplicationHelper

  def logo 
    image_tag("logo.png", :alt => "mealstory", :class => "round")
  end

  #return titles on per page basis
  def title 
    base_title = "mealstory"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
