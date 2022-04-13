class Trip < ApplicationRecord
    has_many :bookings
    has_many :comments
    belongs_to :user, :optional => true
end
