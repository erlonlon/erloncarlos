class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all
    respond_with @users
  end

  def new
   @user = User.new
   respond_with @user
  end

  

  def edit
    @user = User.find(params[:id])
  end
  def create
    @user = User.new(params[:user])
    flash[:notice] = 'Registro salvo com sucesso.' if @user.save
    respond_with @user , :location => admin_users_path
  end

  def update
    @user = User.find(params[:id])
    flash[:notice] = 'Registro atualizado com sucesso.' if @user.update_attributes(params[:user])
    respond_with @user , :location => admin_users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_with @user, :location => admin_user_path
  end

  
end
