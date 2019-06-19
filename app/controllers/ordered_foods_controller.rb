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
        food = Food.find(orderedfood.food_id)
        price = order.price += food.price
        order.update(price: price)
        redirect_to edit_order_path(session[:order_id])
    end

    def destroy
        ordered = OrderedFood.find(params[:id])
        order = Order.find(session[:order_id])
        food = Food.find(ordered.food_id)
        price = order.price -= food.price
        order.update(price: price)
        ordered.destroy
        redirect_to edit_order_path(session[:order_id])
    end

    def permit_params
        params.require(:ordered_food).permit(:food_id)
    end
end
