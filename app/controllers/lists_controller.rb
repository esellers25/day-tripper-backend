class ListsController < ApplicationController

    def index 
        lists = List.all 
        render json: lists 
    end 
    
    def show 
        list = List.find(params[:id])
        render json: list 
    end 

    def create 
        list = List.create(list_params)
        render json: list 
    end 

    private 

    def list_params 
        params.permit(:title, :user_id)
    end 

end
