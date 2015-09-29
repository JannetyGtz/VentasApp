class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :destroy] 
  before_action :require_user
  #before_action :require_admin, only: [:show, :edit]

  def index    
    @users = User.based_in_merchant(current_user).where(status: 'Activo')
  end
  
  def new
    @user_new = User.new
  end

  def create
    @user_new = User.new(user_params)
    if @user_new.save
      flash[:notice] = 'Usuario creado!'
      redirect_to user_index_path
    else
      render 'new'
    end
  end

  def show
  end
  
  def edit
  end

  def update  
    if @user_new.update(user_params)
      redirect_to user_index_path
    else
      render 'edit'
    end
  end

  def destroy
    if @user_new.update_attribute(:status,"Inactivo")
      redirect_to user_index_path
    else
      render '/'
    end
  end

  private
  def get_user
    @user_new = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :cellphone, :store_id)
  end
end
