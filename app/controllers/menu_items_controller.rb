class MenuItemsController < ApplicationController

    def index
        @menu_items = Menu_Item.all
    end

    def new
    end

    def create
        menu_item = Menu_Item.create(permit_params)
        redirect_to menu_item
    end

    def show
        @menu_item = Menu_Item.find(params[:id])
    end

    def edit
        @menu_item = Menu_Item.find(params[:id])
    end
    
    def update
        menu_item = Menu_Item.find(params[:id])
        menu_item = Menu_Item.update(permit_params)
        redirect_to menu_item
    end
    
    def destroy
    end

    def permit_params
        params.require(:menu_item).permit(:food_id, :restaurant_id)
    end
end