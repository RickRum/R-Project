class ProfilesController < ApplicationController
	def index
		@profile = current_user
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		@user.update(user_params)
		redirect_to profile_path(@user)
	end

	private def user_params
		params.require(:user).permit(:email)
	end
end
