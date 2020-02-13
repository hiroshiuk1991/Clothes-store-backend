class Customer < ApplicationRecord
    has_secure_password 
   
    has_one :cart 
    has_many :items, through: :cart

end
