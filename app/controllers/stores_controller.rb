class StoresController < ApplicationController
  def new
  	@store = Store.new
  end

  def create
	@store = Store.new(store_params)
	if @store.save
		redirect_to '/'
	else
		render 'new'
	end
  end

  def show
  		
  end

  private 
  def store_params
	   params.require(:store).permit(:name,:address,:phone)
  end  

end
	