module ApplicationHelper

  def full_title(page_title)
    base_title = 'MediRecord'
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def y(value)
    value ? 'Yes' : 'No'
  end

end
