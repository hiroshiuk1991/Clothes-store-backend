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
        cart = Cart.create(cart_params)
    end 


    private

    def cart_params 
        permit.require(:cart).permit(:user_id, :item_id)
    end 

end
