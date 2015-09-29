class SessionsController < ApplicationController
	#before_action :active_user
  def new
		
	end
	
	def create
		@user = User.find_by_name(params[:session][:name || :email])
  		if @user && @user.authenticate(params[:session][:password])
    		session[:user_id] = @user.id
    		redirect_to principal_path
  		else
        flash[:notice] = 'Ususario o contraseña invalidos'
    		redirect_to '/login'
  		end 
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'	
	end
end
