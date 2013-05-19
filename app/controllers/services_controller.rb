class ServicesController < ApplicationController

before_filter :controle_extra

  def index
  end


  
  def controle_extra
     @categories = Category.all
      @category   = Category.find(params[:category_id]) if params[:category_id]
     @galleries = Gallery.find(:all, :limit => 6, :order=> 'created_at desc')
     @posts_rodape = Post.find(:all, :limit => 1)
      @post_recentes = Post.find(:all, :limit => 4)
      @galleries_servicos = Type.find(3)
       
       @galleries_clientes = Type.find(5)
  end
end
