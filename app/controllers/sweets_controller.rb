class SweetsController < ApplicationController
  before_action :find_sweet, only: [:show]
  def index
    @sweets = Sweet.all
  end
 
  def show
  end
  
  def new
  @sweet = Sweet.new  
  end

  def create
  sweet = Sweet.create(sweet_params)

  end



private

def sweet_params
  params.require(:sweet).permit(:name)
end

def find_sweet
  @sweet = Sweet.find(params[:id])
end





  
end
