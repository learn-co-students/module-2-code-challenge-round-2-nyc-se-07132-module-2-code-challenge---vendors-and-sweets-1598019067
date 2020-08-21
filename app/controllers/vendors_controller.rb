class VendorsController < ApplicationController

  def new
    @vendor = Vendor.new
    #trying to make average work
  end

  def index
    @vendors = Vendor.all
    # total_average_sweet_price = @vendor.sweets.average(:price).round(2)
  end

  def show
    @vendor = Vendor.find(params[:id])
  end
  
end
