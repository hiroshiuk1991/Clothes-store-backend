class CustomersController < ApplicationController


    def index
        customer = Customer.all 
        render json: customer
    end 

    def show
        customer = Customer.find(params[:id])
        render json: {id: customer.id, username: customer.username, email: customer.email, password: customer.password}
    end

    def create 
        customer = Customer.create(customer_params)
        render json: customer
    end 

    def destroy
        Customer.destroy(params[:id])
    end 

    def update 
        customer = Customer.find(params[:id])
    end 


    def login
        customer = Customer.find_by(username: params[:customer][:username])
        
        if customer and customer.authenticate(params[:customer][:password])
         
            render json: {customer_username: customer.username, customer_id: customer.id, token:issue_token({id: customer.id}) }
        else 
          
            render json:{error: 'Username/Password invalid'}, status: 403    
        end 
    end 

    def validate 
        customer = get_current_customer
        if customer
            render json: {customer: customer.username, token:issue_token({id: customer.id}) }
        else
            render json:{error: 'Not Authorized'}, status: 401
        end
    end



    private

    def customer_params
        params.require(:customer).permit(:username, :password)
    end 


end
