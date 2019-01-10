class ClientsController < ApplicationController

  
    def index
      @clients = Client.scoped
    end
  
    def show
      @client = Client.find(params[:id])
    end
  
    def create
      @client = Client.new(params[:client])
    end
  
    def update
      @client = Client.find(params[:id])
    end
  
    def edit
      @client = Client.find(params[:id])
    end
  
    def destroy
      client = Client.find(params[:id])
    end
end
