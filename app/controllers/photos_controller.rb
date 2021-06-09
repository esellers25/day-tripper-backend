class PhotosController < ApplicationController
    before_action :find_photo, only: [:show, :destroy]
    
    def index 
        photos = Photo.all 
        render json: photos 
    end
    
    def show 
        render json: photo 
    end 

    def create 
        photo = Photo.create(photo_params)
        render json: photo 
    end 

    def destroy 
        photo.destroy 
        render json: {message: "photo deleted"}
    end 

    private 

    def find_photo
        photo = Photo.find(params[:id])
    end 

    def photo_params
        params.require(:photo).permit(:title, :img_link, :date, :user_id, :trail_id)
    end 
end
