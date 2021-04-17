class BlogsController < ApplicationController
	before_action :private_access, except: [:show, :posts]

	def index
		@blogs = Blog.all
	end

	def posts
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(blog_params)
		if @blog.save
			redirect_to blogs_path, notice: "La entrada de blog fue creada con éxito"
		else
			render :new
		end
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def update
		@blog = Blog.find(params[:id])
		if @blog.update(blog_params)
			redirect_to blogs_path notice:"La entrada fue actualizada de blog fue creada con éxito"
		else
			render :edit
		end
	end

	def destroy
		blog = Blog.find(params[:id])
		blog.destroy
		redirect_to blogs_path, notice: "La entrada de blog fue eliminada con éxito"
	end

	private
		def blog_params
			params.require(:blog).permit(:title, :content, :description, :image_path)
		end

end
