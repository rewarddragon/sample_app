module ApplicationHelper
  
  #returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Ruby on rails Tutorial Sample App"
    if page_title.empty?
      return base_title
    else
      return "#{base_title} | #{page_title}"
    end #if
  end #full_title
end
