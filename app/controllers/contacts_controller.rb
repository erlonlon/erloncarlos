class ContactsController < ApplicationController

  before_filter :controle_extra
  
  def index
     @contact = Contact.new
     respond_with @contact
  end

 
  

  def new
    @contact = Contact.new
     respond_with @contact
  end 
  

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(params[:contact])
    flash[:notice] = 'Contato enviado com sucesso. Logo faremos contato ! ' if @contact.save 
    respond_with @contact ,:location => contacts_path 
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
