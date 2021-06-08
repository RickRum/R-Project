class Admin::UsersController < ApplicationController
	def index
		@users = User.page params[:page]
	end	

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to admin_user_path(@user)
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			redirect_to admin_users_path
		end
	end

	private def user_params
		params.require(:user).permit(:category , :userName)
	end
end