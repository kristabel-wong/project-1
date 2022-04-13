class BookingsController < ApplicationController
    def create
        booking = Booking.new
        booking.user_id = @current_user.id
        booking.trip_id = params[:trip_id]
        booking.save
        redirect_to trip_path(params[:trip_id])
    end

    def destroy
        booking = Booking.find params[:id]
        booking.destroy
        redirect_to trip_path(params[:trip_id])
    end

end
