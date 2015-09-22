class StoresController < ApplicationController
  before_action :require_user
  def index
    @stores = Store.all
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
    get_store
  end
  
  def edit
    get_store
  end
  def update
    get_store
    if @store.update(store_params)
      redirect_to @store
    else
      render 'edit'
    end
  end
  def store_status
    get_store
    if @store.update(store_params)
      redirect_to @store
    else
      render 'edit'
    end
  end
private
  
  def get_store
    @store= Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:name, :address, :phone)
  end
end
