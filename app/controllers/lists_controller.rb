class ListsController < ApplicationController
    # before action :authorized, only: [:create]
    
    def index 
        lists = List.all 
        render json: lists 
    end 
    
    def show 
        list = List.find_by(user_id: params[:id])
        render json: list 
    end 

    def create 
        list = @user.lists.create(list_params)
        render json: list 
    end 

    def update
        list = List.find(params[:id])
        list.update(list_params)
        render json: list 
    end 

    private 

    def list_params 
        params.permit(:title, :user_id, :public)
    end 

end
