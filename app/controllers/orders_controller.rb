class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def new
        @restaurant = Restaurant.find(flash[:id])
        @order = Order.new(customer_id: session[:customer_id])
    end

    def create
        order = Order.create(permit_params)
        redirect_to order
    end

    def show
        @order = Order.find(params[:id])
    end

    def edit
        @order = Order.find(params[:id])
    end
    
    def update
        order = Order.find(params[:id])
        order.update(permit_params)
        redirect_to order
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