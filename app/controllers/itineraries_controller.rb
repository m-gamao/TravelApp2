class ItinerariesController < ApplicationController
  def new
    @itinerary = Itinerary.new
  end

  def index
    @itineraries = Itinerary.all
  end

  def show
    @itinerary = Itinerary.find_by(id: params[:id])
  end

  def update
    @itinerary = Itinerary.find_by(params[:id])
    @itinerary.update(itinerary_params)
    redirect_to itinerary_path(@itinerary)
  end

  def edit
    @itinerary = Itinerary.find_by(params[:id])
  end

  def create
    @itinerary = Itinerary.create(itinerary_params)
    redirect_to itinerary_path(@itinerary)
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:destination, :date, :time, :budget)
  end

end
