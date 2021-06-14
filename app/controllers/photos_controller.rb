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
        
        result = Cloudinary::Uploader.upload(params[:img_link])
        photo = Photo.create(user_id: params[:user_id], title: params[:title], trail_id: params[:trail_id], img_link: result['url'], date: params[:date])
          if photo.save
             render json: photo
          else
             render json: photo.errors
          end
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
        params.permit(:title, :img_link, :date, :user_id, :trail_id)
    end 
end
