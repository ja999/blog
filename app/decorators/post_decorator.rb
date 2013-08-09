class PostDecorator < Draper::Decorator
	delegate_all
	decorate :post

	def text_break
		text.to_s.gsub(/\n/, "<br>").html_safe
	end
end