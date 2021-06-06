class Admin::PhotosController < ApplicationController
	 def index
      @photos = Photo.all
   end
   def show
      @photo = Photo.find(params[:id])
   end
   def new
      @photo = Photo.new
   end
   def destroy
      @photo = Photo.find(params[:id])
      if
         @photo.destroy
         redirect_to admin_photos_path
      end
   end
   def create
      @photo = Photo.new(photo_params)
      if @photo.save
         redirect_to admin_photo_path(@photo)
      end
   end
   private
   def photo_params
      params.require(:photo).permit(:images , :userName)
   end
end