class CustomersController < ApplicationController
    skip_before_action :require_login, only: [:new, :create, :login_form, :authenticate]
    def index
        @customers = Customer.all
    end

    def new
        @customer = Customer.new()
    end

    def create
        customer = Customer.create(permit_params)
        if customer.img_url == ""
            customer.update(img_url: "https://www.qualiscare.com/wp-content/uploads/2017/08/default-user.png")
        end

        redirect_to '/'
    end

    def search
        if Customer.find_by(username:(params[:username])) != nil
        @customer = Customer.find_by(username:(params[:username]))
        redirect_to customer_path(@customer.id)
        else
            redirect_to customer_path(session[:customer_id])
        end
    end

    def show
        @customer = Customer.find(params[:id])
    end

    def edit
        @customer = Customer.find(session[:customer_id])
    end
    
    def update
        customer = Customer.find(params[:id])
        customer.update(permit_params)
        redirect_to customer_path
    end
    
    def destroy
        session[:customer_id] = nil
        customer = Customer.find(params[:id])
        customer.destroy
        redirect_to '/'
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

    def home
        order= Order.all.last
        order.destroy
        redirect_to customer_path(session[:customer_id])
    end


end

