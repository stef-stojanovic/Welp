class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def new
        @orderedfood = OrderedFood.new
        @restaurant = Restaurant.find(flash[:id])
        @foods = @restaurant.foods
        flash.keep[:restaurant_id] = @restaurant.id
        @order = Order.create(customer_id: session[:customer_id], restaurant_id: @restaurant.id)
        @@order = @order
        session[:order_id] = @order.id
        
    end

    def create
        byebug
        order = @@order.update(permit_params)
        redirect_to order
    end

    def show
        session[:order_id] = nil
        @order = Order.find(params[:id])
        @foods = []
        @order.foods.each {|o| @foods << o.name}
    end

    def edit
        @order = Order.find(params[:id])
        session[:order_id] = @order.id
        customer = Customer.find(session[:customer_id])
    end
    
    def update
        order = Order.find(params[:id])
        order.update(price: 0)
        params[:ordered_food_ids].each do |f| 
            b = Food.find(f)
            price = order.price += b.price
            order.update(price: price)
            OrderedFood.create(order_id: params[:id], food_id: f)
        end
        
        redirect_to customer_path(session[:customer_id])
        # if order.foods == []
        #     res = Restaurant.find(order.restaurant_id)
        #     order.destroy
        #     redirect_to res
        # else
        #     session[:order_id] = nil
        #     
        # end
    end
    
    def destroy
        order= Order.find(params[:id])
        order.destroy
        redirect_to customer_path(session[:customer_id])
    end

    def permit_params
        params.require(:order).permit(:restaurant_id, :customer_id, :price)
    end

    def back_to_restaurant
        order= Order.all.last
        res = order.restaurant_id
        order.destroy
        redirect_to restaurant_path(res)
    end
end