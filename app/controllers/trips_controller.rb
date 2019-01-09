class TripsController < ApplicationController

  
    def index
      @trips = Trip.all
    end
  
    def show
      @trip = Trip.find(params[:id])
    end
  
    # def create
    #   @trip = Trip.new(params[:])
    # end
  
    def update
      @trip = Trip.find(params[:id])
    end
  
    def edit
      @trip = Trip.find(params[:id])
    end
  
    def destroy
      @trip = Trip.find(params[:id])
    end

end