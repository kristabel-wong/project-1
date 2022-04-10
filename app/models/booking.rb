class Booking < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :trip, :optional => true
end
