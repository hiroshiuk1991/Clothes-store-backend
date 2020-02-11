class Cart < ApplicationRecord
    has_one :customer
    has_many :items

end
