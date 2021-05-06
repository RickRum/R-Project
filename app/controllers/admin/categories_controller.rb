class Admin::CategoriesController < ApplicationController
	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		@category.save
		redirect_to admin_category_path(@category)
	end

	def show
		@category = Category.find(params[:id])
	end

	private def category_params
		params.require(:category).permit(:title)
	end
end
