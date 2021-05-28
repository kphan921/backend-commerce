class ReviewsController < ApplicationController

    def create
        review = Review.new(params[:review])
        if @review.save
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
