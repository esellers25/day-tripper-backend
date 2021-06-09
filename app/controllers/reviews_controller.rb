class ReviewsController < ApplicationController

    before_action :find_review, only: [:show, :update, :destroy]
    def index 
        reviews = Review.all 
        render json: reviews 
    end
    
    def show 
        render json: review 
    end 

    def create 
        review = Review.create(review_params)
        render json: review 
    end 

    def update 
        review.update(review_params)
        render json: review 
    end 

    def destroy 
        review.destroy 
        render json: {message: "review deleted"}
    end 

    private 

    def find_review
        review = Review.find(params[:id])
    end 

    def review_params
        params.require(:review).permit(:comment, :difficulty, :rating, :date, :user_id, :trail_id)
    end 
end
