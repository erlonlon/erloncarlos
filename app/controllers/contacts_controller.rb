class ContactsController < ApplicationController
  
  def index
     @contact = Contact.new
     respond_with @contact
  end

 
  def show
    @contact = Contact.find(params[:id])
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

 
end
