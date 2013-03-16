module ApplicationHelper


	def textilize(text)
    RedCloth.new(text).to_html.html_safe
  end
end
