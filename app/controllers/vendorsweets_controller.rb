class VendorsweetsController < ApplicationController

    def new 
        @vendorsweets = Vendorsweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all    
    end

    def create
        @vendorsweet = Vendorsweet.create(vendorsweet_params)

        if @vendorsweet.valid?
            redirect_to vendor_path(@vendorsweet.vendor_id)
        else
            flash:[:my_errrors] = @vendorsweet.errors.full_messages

            redirect_to vendorsweet_path
        end
    end

    private

    def vendorsweet_params
        params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :price)
    end
    
end
