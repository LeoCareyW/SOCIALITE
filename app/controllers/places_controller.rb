class PlacesController < ApplicationController


def index
  if params[:category]
    @places = Place.where(:category => params[:category]).geocoded
  else
    @places = Place.all.geocoded
  end


  @markers = @places.map do |place|
    {
      lat: place.latitude,
      lng: place.longitude,
    }
  end
end

def new
  @place = Place.new
end

def create
  @place = Place.new(place_params)
   if @place.save
    redirect_to place_path(@place)
  else
    render :new
  end
end

def show
  @place = Place.find(params[:id])
  # @groups = Group.joins(:users).where(users: current_user)
  @groups = current_user.groups
  @recommendation = Recommendation.where("user_id = ? and place_id = ?", current_user.id, @place.id).first
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
  params.require(:place).permit(:name, :address, :category, :description, photos:[])
end

end
