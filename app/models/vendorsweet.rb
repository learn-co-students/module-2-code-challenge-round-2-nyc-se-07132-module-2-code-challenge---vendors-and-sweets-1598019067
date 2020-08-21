class Vendorsweet < ApplicationRecord
    belongs_to :vendor 
    belongs_to :sweet


    validates :price, presence: {message: 'price must be included'}
    validates :price, numericality: {greater_than: 0}


   
end
