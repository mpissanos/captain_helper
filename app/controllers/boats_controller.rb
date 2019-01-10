class BoatsController < ApplicationController


  def index
    @boats = Boat.scoped
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def create
    @boat = Boat.new(params[:boat])
  end

  def update
    @boat = Boat.find(params[:id])
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def destroy
    boat = Boat.find(params[:id])
  end

end
