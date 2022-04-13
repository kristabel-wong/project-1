class TripsController < ApplicationController
    def index
        @trips = Trip.where('date > ?', DateTime.now).order('date', 'time') # ordering the index page by date and then time
    end

    def new
        @trip = Trip.new
    end

    def create
        trip = Trip.create trip_params # if @current_user.id == params[:user_id]
        @current_user.trips << trip
        redirect_to trip
    end

    def edit
        @trip = Trip.find params[:id]
    end

    def update
        trip = Trip.find params[:id]
        trip.update trip_params
        redirect_to trip
    end

    def show
        @trip = Trip.find params[:id]
    end

    def destroy
        trip = Trip.find params[:id]
        trip.destroy
        redirect_to trips_path
    end

    private 
    def trip_params
        params.require(:trip).permit(:title, :image, :date, :time, :seat, :price, :car_make, :car_model, :description, :user_id)
    end

end
