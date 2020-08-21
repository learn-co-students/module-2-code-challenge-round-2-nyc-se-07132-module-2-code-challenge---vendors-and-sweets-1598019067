class VendorSweet < ApplicationRecord
    belongs_to :sweet
    belongs_to :vendor
    
    # validates :vendor_id, uniqueness: true
    # validates :sweet_id, uniqueness: true
    validates :price, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 25 }
end
