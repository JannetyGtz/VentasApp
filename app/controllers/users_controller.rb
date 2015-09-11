class UsersController < ApplicationController
	def new
		@user_new = User.new
		@stores = Store.all
	end

	def create
		@user_new = User.new(user_params)
		if @user_new.save
			redirect_to '/'
		else
			render 'new'
		end
	end

	private 
	def user_params
		params.require(:user).permit(:name,:email,:password,:cellphone)
	end
end
