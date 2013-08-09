class PostsController < ApplicationController
	before_filter :authenticate_user!
	def new
		@post=Post.new
		@post.email=current_user.email
	end
	
	def edit
		@post=Post.find(params[:id])
	end
	
	def update
	  @post = Post.find(params[:id])
	 
	  if @post.update(params[:post].permit(:email, :title, :text))
	    redirect_to @post
	  else
	    render 'edit'
	  end
	end

	def destroy
		@post=Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end
	
	def index
		@posts=Post.all
	end

	def create
		@post = Post.new(params[:post].permit(:email, :category, :title, :text, :date))
		
		@post.save
		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end
	
	def show
		@post=Post.find(params[:id]).decorate
	end
	
	private
		def post_params
			params.require(:post).permit(:title, :text)
		end
end
