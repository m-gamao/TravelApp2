class DestinationsController < ApplicationController
  def new
    @destination = Destination.new
  end
  
  def index
    @destinations = Destination.all
  end
  
  def show
    @destination = Destination.find_by(id: params[:id])
  end
  
  def update
    @destination = Destination.find_by(params[:id])
    @destination.update(destination_params)
    redirect_to destination_path(@destination)
  end
  
  def edit
    @destination = Destination.find_by(params[:id])
  end
  
  def create
    @destination = Destination.create(destination_params)
    redirect_to destination_path(@destination)
  end
  
  private
  
  def destination_params
    params.require(:destination).permit(:name, :location, :description)
  end
  
end