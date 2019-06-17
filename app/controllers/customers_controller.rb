class CustomersController < ApplicationController

    def index
        @customers = Customer.all
    end

    def new
    end

    def create
        customer = Customer.create(permit_params)
        redirect_to customer
    end

    def show
        @customer = Customer.find(params[:id])
    end

    def edit
        @customer = Customer.find(params[:id])
    end
    
    def update
        customer = Customer.find(params[:id])
        customer = Customer.update(permit_params)
        redirect_to customer
    end
    
    def destroy
        customer = Customer.find(params[:id])
        customer.destroy
        redirect_to customers_path
    end

    def permit_params
        params.require(:customer).permit(:username, :password_digest, :name, :img_url, :balance, :description)
    end
end

