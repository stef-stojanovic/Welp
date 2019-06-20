class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def new
        @restaurant = Restaurant.find(flash[:id])
        flash.keep[:restaurant_id] = @restaurant.id
        @order = Order.create(customer_id: session[:customer_id], restaurant_id: @restaurant.id)
        @@order = @order
        session[:order_id] = @order.id
        @order.update(price: 0)
    end

    def create
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
        if order.foods == []
            res = Restaurant.find(order.restaurant_id)
            order.destroy
            redirect_to res
        else
            session[:order_id] = nil
            redirect_to order
        end
    end
    
    def destroy
        order= Order.find(params[:id])
        order.destroy
        redirect_to orders_path
    end

    def permit_params
        params.require(:order).permit(:restaurant_id, :customer_id, :price)
    end
end