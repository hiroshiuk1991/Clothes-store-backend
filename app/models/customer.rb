class Customer < ApplicationRecord
    has_secure_password 
    # has_unique_username

    has_many :carts
    has_many :items, through: :cart

end
