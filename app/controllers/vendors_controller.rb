class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    
    
  end

  def show
    @vendor = Vendor.find(params[:id])
    # @average_sweet_price = @vendor.sweets.average(:price).round(2)
  end
  
end
