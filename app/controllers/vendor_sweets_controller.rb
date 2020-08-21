class VendorSweetsController < ApplicationController
    def new
        @vendor_sweet = VendorSweet.new
    end

    def create
        @vendor_sweet = VendorSweet.create(vendor_sweet_params)
        if @vendor_sweet.valid?
            redirect_to vendor_path(@vendor_sweet.vendor)
        else
            flash[:myerror] = @vendor_sweet.errors.full_messages
            render :new
        end
    end
    
    private

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end
