class VendorSweetsController < ApplicationController

    def new
        @vendorsweet = VendorSweet.new
    end 

    def create
        @vendorsweet = VendorSweet.create(vendor_sweet_params)
        if @vendorsweet.valid?
            redirect_to vendor_path(@vendorsweet.vendor)
        else 
            flash[:error] = @vendorsweet.errors.full_messages
            redirect_to new_vendor_sweet_path 
    end 

    private

    def vendor_sweet_params
        params.require(:vendorsweet).permit(:sweet ,:vendor ,:price )
    end
end