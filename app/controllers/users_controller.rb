class UsersController < ApplicationController
    before_action :authorized, only: [:keep_logged_in]
    before_action :find_user, only: [:lists, :show, :destroy, :update]
    
    def index 
        @users = User.all 
        render json: @users
    end 
    
    def show
        render json: @user 
    end 

    def login 
        
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            user_token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: user_token}
        else 
            render json: {error: "Incorrect password"}
        end 
       
    end 

    def create 
        @user = User.create(user_params) 
        if @user.valid? 
            user_token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: user_token}
        else 
            render json: {error: "Not able to create a new user"}
        end 
    end 


    def keep_logged_in
        user_token = encode_token({user_id: @user.id})

        render json: {
            user: UserSerializer.new(@user), 
            token: user_token
        }
    end

    def update 
        @user.update!(params.require(:user).permit(:name, :email, :location, :profile_picture, :username, :id, :password))
        render json: @user 
    end 

    def destroy 
        @user.destroy 
        render json: {message: "User successfully deleted"}
    end 

    private 

    def find_user 
        @user = User.find(params[:id])
    end 

    def user_params
        params.permit(:name, :password, :email, :location, :profile_picture, :username)
    end 
end
