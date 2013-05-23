class PostsController < ApplicationController

	before_filter :controle_extra

	def index
      @posts = Post.paginate page: params[:page], :per_page => 3
      #filtar os posts por categoria
       @posts = @category.posts if @category.present?
       @posts = @posts.published.paginate page: params[:page], :per_page => 3
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
     @galleries = Gallery.all
     @posts_rodape = Post.find(:all, :limit => 1)
       @galleries_servicos = Type.find(3)
       @galleries_eventos = Type.find(4)
     @post_recentes = Post.find(:all, :limit => 15)
	end


end
