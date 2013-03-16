class PostsController < ApplicationController

	before_filter :controle_extra

	def index
      @posts = Post.paginate page: params[:page], :per_page => 10
      #filtar os posts por categoria
       @posts = @category.posts if @category.present?
       @posts = @posts.published.paginate page: params[:page], :per_page => 10
       respond_with @posts

	end

	def show

		 @post = Post.find(params[:id])
         respond_with @post
	end

	def controle_extra
     @categories = Category.all
     #filtra os posts por catregorias
     @category   = Category.find(params[:category_id]) if params[:category_id]
     @galleries = Gallery.find(:all, :limit => 6, :order=> 'created_at desc')
     @posts_rodape = Post.find(:all, :limit => 1)
     @post_recentes = Post.find(:all, :limit => 4)
	end


end
