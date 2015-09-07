module ApplicationHelper
  def full_title(page_title)
    base_title = "Grunwald -千葉の天然酵母パン教室-"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
