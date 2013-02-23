class Admin::ContactsController < Admin::BaseController
  
  def index
     @contacts = Contact.paginate page:params[:page], :per_page => 10
     respond_with @contact
  end

 
  def show
    @contact = Contact.find(params[:id])
     respond_with @contact
  
  end

  
  

 
 
end
