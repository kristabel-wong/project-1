class BookingsController < ApplicationController
    def create
        booking = Booking.new
        booking.user_id = @current_user.id
        booking.trip_id = params[:trip_id]
        booking.save
        flash[:message] = " 🎟  Success! You have created a booking "
        redirect_to trip_path(params[:trip_id])
    end

    def destroy
        booking = Booking.find params[:id]
        booking.destroy
        flash[:message] = " ❌  Booking Deleted "
        redirect_to trip_path(params[:trip_id])
    end

end
