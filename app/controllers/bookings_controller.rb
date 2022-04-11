class BookingsController < ApplicationController
    def create
        booking = Booking.new
        booking.user_id = @current_user.id
        booking.trip_id = params[:trip_id]
        booking.save
        redirect_to root_path
    end
end
