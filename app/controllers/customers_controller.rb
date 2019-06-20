class CustomersController < ApplicationController

    def index
        if session[:customer_id] != nil
        @customers = Customer.all
        else
            redirect_to '/'
        end
    end

    def new
        @customer = Customer.new()
    end

    def create
        customer = Customer.create(permit_params)
        redirect_to '/'
    end

    def show
        if session[:customer_id] != nil
        @customer = Customer.find(params[:id])
        else
            redirect_to '/'
        end
    end

    def edit
        if session[:customer_id] != nil
        @customer = Customer.find(session[:customer_id])
        else
            redirect_to '/'
        end
    end
    
    def update
        customer = Customer.find(params[:id])
        customer.update(permit_params)
        redirect_to customer_path
    end
    
    def destroy
        customer = Customer.find(params[:id])
        customer.destroy
        redirect_to customers_path
    end

    def permit_params
        params.require(:customer).permit(:username, :password, :name, :img_url, :balance, :description)
    end

    def login_form

    end

    def authenticate
        customer = Customer.find_by(username:(params[:username]))
        if customer != nil && customer.authenticate(params[:password])
            session[:customer_id] = customer.id
            redirect_to customer_path(session[:customer_id])
        else
            #error
        end
    end

    def log_out
        session[:customer_id] = nil
        redirect_to '/'
    end

end

