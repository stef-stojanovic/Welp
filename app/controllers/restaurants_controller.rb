class RestaurantsController < ApplicationController

    def index
        @restaurants = Restaurant.all
    end

    def new
    end

    def create
        restaurant = Restaurant.create(permit_params)
        redirect_to restaurant
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def edit
        @restaurant = Restaurant.find(params[:id])
    end
    
    def update
        restaurant = Restaurant.find(params[:id])
        restaurant = Restaurant.update(permit_params)
        redirect_to restaurant
    end
    
    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        redirect_to restaurants_path
    end

    def permit_params
        params.require(:restaurant).permit(:username, :password_digest, :name, :street_address, :zip, :phone_number, :rating, :description, :img_url)
    end
end