class StoresController < ApplicationController
  before_action :get_store, only: [:show, :edit, :update, :destroy]
  before_action :require_user 
  before_action :require_admin


  def index
    @stores = Store.where(status: 'Activa')
  end

  def new
    @store = Store.new
  end
  def create
    @store = Store.new(store_params)
    if @store.save
      flash[:notice] = 'Tienda creada!'
      redirect_to @store
    else
      render 'new'
    end
  end
  def show
  end
  
  def edit
  end

  def update
    if @store.update(store_params)
      redirect_to @store
    else
      render 'edit'
    end
  end

  def destroy
    if @store.update_attribute(:status, "Inactiva")
      redirect_to store_index_path
    else
      render '/'
    end
  end

private
  
  def get_store
    @store= Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:name, :address, :phone,:status)
  end
end
