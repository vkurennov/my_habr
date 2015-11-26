module ApplicationHelper
  def link_with_icon(icon, path, options = {})
    title = options.delete(:title)
    link_to path, options do
      content_tag(:i, title, class: "fa fa-#{icon}")
    end
  end
end
