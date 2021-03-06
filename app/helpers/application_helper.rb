module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "environmentality"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  def page_title(page_title)
    base_title = "environmentality"
    if page_title.empty?
      base_title
    else
    "#{page_title}"
    end
  end

end
