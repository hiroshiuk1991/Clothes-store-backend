class Item < ApplicationRecord
    has_many :carts
    has_many :customers, through :cart
    
end
