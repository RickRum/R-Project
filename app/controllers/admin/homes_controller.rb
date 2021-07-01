class Admin::HomesController < ApplicationController
	before_action :authenticate_user!
	before_action :user_category
	def index
		@posts = Post.all
	end	

	def user_category
		if current_user.category == 'admin'
			return admin_posts_path
		else
			redirect_to posts_path		
		end	
	end	
end
