class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet
    validates :price, presence: true
    validates :price, numericality: {greater_than: 0}
    # validates :uniqueness_of :vendor_sweet.id, scope: :vendor_id, :message => "Combo already exists"
end

