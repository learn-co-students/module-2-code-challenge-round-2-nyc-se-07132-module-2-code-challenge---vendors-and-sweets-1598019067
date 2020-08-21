class VendorSweetsController < ApplicationController
    def new
        @vendor_sweet = VendorSweet.new
    end

    def create
        @vendor_sweet = VendorSweet.create(vs_param)
        if @vendor_sweet.valid? 
            redirect_to vendor_path(@vendor_sweet.vendor)
        else
            flash[:my_error] = @vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweet_path
        end
    end

private
    def vs_param
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end
