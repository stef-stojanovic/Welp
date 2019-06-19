class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end

    def new
        if flash[:id] != nil
            @@review = Review.new
            @@review.restaurant_id = flash[:id]
            # @@review.customer_id = session[:customer_id]
            @review = @@review
            @restaurant = Restaurant.find(flash[:id])
            flash[:if] = "update"
        else
            flash[:if] = "new"
            @@review = Review.new
            @@review.customer_id = session[:customer_id]
            byebug
        end
    end

    def create
        byebug
        if flash[:if] == "update"
            @@review.update(permit_params)
            redirect_to @@review
        else 
            @@review.update(permit_params)
            redirect_to review
        end
    end

    def show
        @review = Review.find(params[:id])
    end

    def edit
        @review = Review.find(params[:id])
    end
    
    def update
        review = Review.find(params[:id])
        review.update(permit_params)
        redirect_to review
    end
    
    def destroy
        review = Review.find(params[:id])
        review.destroy
        redirect_to reviews_path
    end

    def permit_params
        params.require(:review).permit(:restaurant_id, :customer_id, :subject, :content, :rating)
    end
end