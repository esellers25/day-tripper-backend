class TrailsController < ApplicationController
    
    def index 
        trails = Trail.all 
        render json: trails 
    end 

    def show 
        trail = Trail.find(params[:id])
        render json: trail 
    end 

    def create 
        trail = Trail.create(trail_params)
        render json: trail 
    end 

    private 

    def trail_params 
        params.require(:trail).permit(:name, :location, :state, :difficulty, :length, :elevation_gain, :route_type, :latitude, :longitude)
    end 
end
