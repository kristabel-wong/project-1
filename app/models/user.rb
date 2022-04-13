class User < ApplicationRecord
    validates :email, :presence => true, :uniqueness => true
    has_secure_password
    has_many :bookings
    has_many :trips
    has_many :comments
end
