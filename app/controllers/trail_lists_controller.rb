class TrailListsController < ApplicationController

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
