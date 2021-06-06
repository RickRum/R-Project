class Admin::ImgalleriesController < ApplicationController
	def index
      @imgalleries = Imgallery.all
   end
   def show
      @imgallery = Imgallery.find(params[:id])
   end
   def new
      @imgallery = Imgallery.new
   end
   def destroy
      @imgallery = Imgallery.find(params[:id])
      if
         @imgallery.destroy
         redirect_to admin_imgalleries_path
      end
   end
   def create
      @imgallery = Imgallery.new(photo_params)
      if @imgallery.save
         redirect_to admin_imgallery_path(@imgallery)
      end
   end
   private
   def photo_params
      params.require(:imgallery).permit(:images , :userName)
   end
end
