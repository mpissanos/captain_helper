class TripsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_client, only: [:index, :new, :edit]
  before_action :set_boat, only: [:index, :new, :edit]
  
    def index
      @trips = Trip.all
    end
  
    def show
      @trip = Trip.find(params[:id])
    end

    def new
      @trips = current_user.trips.select { |t| t.persisted?}
      @trip = current_user.trips.build
    end
  
    def create
      @trip = Trip.new(params[:])
    end
  
    def update
      @trip = Trip.find(params[:id])
    end
  
    def edit
      @trip = Trip.find(params[:id])
    end
  
    def destroy
      @trip = Trip.find(params[:id])
    end

    private 

    def set_client
      @client = current_user.clients.find_by(id: params:[:client_id])
    end

    def set_boat
      @boat = current_user.boats.find_by(id: params[:boat_id])
    end

end