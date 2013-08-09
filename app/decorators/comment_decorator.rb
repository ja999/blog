class CommentDecorator < Draper::Decorator
	delegate_all
	decorate :post

	def body_break
		body.to_s.gsub(/\n/, "<br>").html_safe
	end
end