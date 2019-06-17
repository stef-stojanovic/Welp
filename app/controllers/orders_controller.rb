class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def new
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
        order = Order.update(permit_params)
        redirect_to order
    end
    
    def destroy
    end

    def permit_params
        params.require(:order).permit(:restaurant_id, :customer_id :price)
    end
end