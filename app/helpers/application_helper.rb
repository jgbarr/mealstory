module ApplicationHelper
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
