class TrailListsController < ApplicationController

    def index 
        trail_lists = TrailList.all
        render json: trail_lists
    end 

    def show 
        trail_list = TrailList.find(params[:id])  
        render json: trail_list
    end 
    
    def create 
        trail_list = TrailList.create(trail_list_params)
        render json: trail_list 
    end 

    def destroy 
        trail_list = TrailList.find(params[:id])
        trail_list.destroy 
        render json: {message: "deleted"}
    end 

    private 

    def trail_list_params 
        params.permit(:list_id, :trail_id)
    end 
end
