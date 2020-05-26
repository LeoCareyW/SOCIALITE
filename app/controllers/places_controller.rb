class PlacesController < ApplicationController

def index
  
end

def new
  @places = Place.new
end

def create
  @place = Place.new
end

def show 
  @place = Place.find(params[:id])

end

def edit
  @place = Place.find(params[:id])
end

def update 
  @place = Place.find(params[:id])
  @place.update(place_params)

  if @place.save
      redirect_to place_path(@place)
  else
      render :new
  end
end

private

def place_params
  params.require(:place).permit(:name, :address, :category)
end

end
