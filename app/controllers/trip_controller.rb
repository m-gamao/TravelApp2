class TripController < ApplicationController
  def new
    @trip = Trip.new
  end
    
  def index
    @trips = Trip.all
  end
    
  def show
    @trip = Trip.find_by(id: params[:id])
  end
    
  def update
    @trip = Trip.find_by(params[:id])
    @trip.update(trip_params)
    redirect_to trip_path(@trip)
  end
    
  def edit
    @trip = Trip.find_by(params[:id])
  end
    
  def create
    @trip = Trip.create(trip_params)
    redirect_to trip_path(@trip)
  end
    
  private
    
  def trip_params
    params.require(:trip).permit(:name, :location, :description)
  end
    
end