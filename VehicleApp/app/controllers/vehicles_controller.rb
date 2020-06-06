class VehiclesController < ApplicationController
    def show
        # this is just a first, initial show method to get everything working...
        @vehicle = Vehicle.find( params[:id] )
    end
    def index
        @vehicle = Vehicle.take( Vehicle.count )
    end
    def create
        Vehicle.create( params.require( :vehicle ).permit( :make, :model, :color, :doors, :seating, :engine ))
        redirect_to "/vehicles"
    end
    def destroy
        Vehicle.find( params[:id] ).destroy
        redirect_to "/vehicles"
    end
end
