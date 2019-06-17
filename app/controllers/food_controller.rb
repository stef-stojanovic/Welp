class FoodsController < ApplicationController

    def index
        @foods = Food.all
    end

    def new
    end

    def create
        food = Food.create(permit_params)
        redirect_to food
    end

    def show
        @food = Food.find(params[:id])
    end

    def edit
        @food = Food.find(params[:id])
    end
    
    def update
        food = Food.find(params[:id])
        food = Food.update(permit_params)
        redirect_to food
    end
    
    def destroy
    end

    def permit_params
        params.require(:food).permit(:name, :description, :img_ur, :price)
    end
end