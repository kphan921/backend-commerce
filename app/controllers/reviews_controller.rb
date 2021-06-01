class ReviewsController < ApplicationController

    def create
        review = Review.new(user_id: current_user.id, item_id: params[:item_id], text: params[:text])
        if review.save
            render json: review
        else
          render json: {msg: "Something went wrong..."}
        end
    end

    private
    def review_params
        params.require(:review).permit(:text, :item_id)
    end
    
    
end
