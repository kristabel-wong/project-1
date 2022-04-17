class User < ApplicationRecord
    validates :email, :presence => true, :uniqueness => true
    has_secure_password
    has_many :bookings, dependent: :destroy
    has_many :trips, dependent: :destroy
    has_many :comments, dependent: :destroy
end
