class Admin::CategoriesController < Admin::BaseController
  
  def index
    @categories = Category.paginate page: params[:page], :per_page => 10
    respond_with @categories
  end

 
  def new
    @category = Category.new
    respond_with @category
  
  end

  
  def edit
    @category = Category.find(params[:id])
  end

 
  def create
    @category = Category.new(params[:category])
    flash[:notice] = "Registro salvo com sucesso" if @category.save
    respond_with @category, :location => admin_categories_path
   end
  

  
  def update
    @category = Category.find(params[:id])
    flash[:notice] = "Registro atualizado com sucesso !" if @category.update_attributes(params[:category])
    respond_with @category, :location => admin_categories_path
   
  end

  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    respond_with @category, :location => admin_categories_path
   
  end
end
