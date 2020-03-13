class ItineraryItemsController < ApplicationController
  def new
    @itinerary_item = Itinerary_item.new
  end

  def index
    @itinerary_item = Itinerary_item.all
  end

  def show
    @itinerary_item = Itinerary_item.find_by(id: params[:id])
  end

  def update
    @itinerary_item = Itinerary_item.find_by(params[:id])
    @itinerary_item.update(itinerary_item_params)
    redirect_to itinerary_item_path(@itinerary_item)
  end

  def edit
    @itinerary_item = Itinerary_item.find_by(params[:id])
  end

  def create
    @itinerary_item = Itinerary_item.create(itinerary_item_params)
    redirect_to itinerary_item_path(@itinerary_item)
  end

  private

  def itinerary_item_params
    params.require(:itinerary_item).permit(:destination, :date, :time, :cost)
  end

end
