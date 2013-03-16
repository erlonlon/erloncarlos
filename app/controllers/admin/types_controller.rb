class Admin::TypesController < Admin::BaseController
 
  def index
    @types = Type.paginate page: params[:page], :per_page => 10
    respond_with @types   
  end

  def new
    @type = Type.new
    respond_with @type      
  end

  def edit
    @type = Type.find(params[:id])
  end

  def create
    @type = Type.new(params[:type])
     flash[:notice] = "REgistro salvo com sucesso !" if @type.save
     respond_with @type, :location => admin_types_path    
  end

  def update
    @type = Type.find(params[:id])
    flash[:notice] = "Registro atualizado com sucesso !" if @type.update_attributes(params[:type])
    respond_with @type, :location => admin_types_path    
  end
 
  def destroy
    @type = Type.find(params[:id])
    @type.destroy
    respond_with @type , :location => admin_types_path      
  end
end