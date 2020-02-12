class CartsController < ApplicationController

    def index
        carts = Cart.all
        render json: carts
    end 

    def show 
        cart = Cart.find(params[:id])
        render json: cart
    end 

    def create 
        # byebug
        cart = Cart.create(cart_params)
        render json: cart
    end 


    private

    def cart_params 
        params.require(:cart).permit(:customer_id, :item_id, :item_name)
    end 

end
