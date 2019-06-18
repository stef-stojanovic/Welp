class OrderedFoodsController < ApplicationController

    def new
        @orderedfood = OrderedFood.new
        @restaurant = Restaurant.find(flash[:restaurant_id])
        @foods = @restaurant.foods
        flash.keep[:restaurant_id] = @restaurant.id
    end

    def create
        order = Order.find (session[:order_id])
        orderedfood = OrderedFood.create(order_id: session[:order_id], food_id: permit_params[:food_id])

        redirect_to edit_order_path(session[:order_id])
    end

    def permit_params
        params.require(:ordered_food).permit(:food_id)
    end
end
