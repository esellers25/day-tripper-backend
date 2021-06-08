class UsersController < ApplicationController
    def create 
        @user = User.new(user_params) 
        if @user.valid? 
            @user.save 
            render json: @user 
        else 
            render json: {error: "Not able to create a new user"}
        end 
    end 

    def login 
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            render json: {username: @user.username, id: @user.id, token: encode_token({user_id: @user.id})}
        else 
            render json: {message: "Incorrect password"}
        end 
    end 

    private 
    def user_params
        params.permit(:name, :password, :email, :location, :profile_picture, :username)
    end 
end
