class ClientsController < ApplicationController
		 before_filter :load_resources
    def index
    @galleries = Gallery.scoped.paginate page: params[:page], :per_page => 2
    @galleries = @type.galleries if @type.present?
    respond_with @galleries

    end

    def show
    @gallery = Gallery.published.find(params[:id])
    respond_with @gallery
    end

    private

    def load_resources


    @categories = Category.all
    @category   = Category.find(params[:category_id]) if params[:category_id]
    @galleries = Gallery.find(:all, :limit => 2, :order=> 'created_at desc')
    @posts_rodape = Post.find(:all, :limit => 1)
    @post_recentes = Post.find(:all, :limit => 4)
      #--------------------------------------------------------------------------

    @types = Type.paginate page: params[:page], :per_page => 2
    @type   = Type.find(params[:type_id]) if params[:type_id]
    #@galleries = Gallery.all   
     @types_clientes = Type.find(2)
   
     @galleries_servicos = Type.find(3)
     @galleries_eventos = Type.find(4)



    end
end
