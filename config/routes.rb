Rails.application.routes.draw do
  resources :items
  resources :carts
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  post '/login', to: 'customers#login'
  get '/validate', to: 'customers#validate'

end
