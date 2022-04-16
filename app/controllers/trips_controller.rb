class TripsController < ApplicationController
    before_action :check_for_login, only: [:new, :create]

    def index
        @trips = Trip.where('date > ?', DateTime.now).order('date', 'time') # ordering the index page by date and then time
    end

    def new
        @trip = Trip.new
    end

    def create
        trip = Trip.create trip_params unless params[:trip][:date] < Time.now # if @current_user.id == params[:user_id]
        @current_user.trips << trip unless trip.nil?
        if trip
            flash[:message] = "Success! Trip Created 🚗 "
            redirect_to trip
        else
            flash[:trip_error] = " 🚫 Error: Invalid Date "
            redirect_to new_trip_path
        end
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
        @remaining = @trip.seat - @trip.bookings.count
        @booked = @trip.bookings.count
    end

    def destroy
        trip = Trip.find params[:id]
        trip.destroy
        redirect_to trips_path
    end

    private 
    def trip_params
        params.require(:trip).permit(:title, :image, :date, :time, :seat, :price, :car_make, :car_model, :description, :user_id, :origin, :destination)
    end

end
