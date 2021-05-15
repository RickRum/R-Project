class UsersController < ApplicationController
	def index
		@user = current_user
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		@user.update(user_params)
		redirect_to users_path(@user)
	end

	def destroy
		@user = current_user
		if @user.destroy
			redirect_to posts_path
		end
	end

	private def user_params
		params.require(:user).permit(:email , :userName)
	end
end
