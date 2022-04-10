# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

u1 = User.create :first_name => 'Jane', :last_name => 'Doe', :email => 'janedoe@ga.co', :password => 'seed1', :image => 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
u2 = User.create :first_name => 'John', :last_name => 'Smith', :email => 'johnsmith@ga.co', :password => 'seed2', :image => 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'

puts "#{ User.count } users."

Booking.destroy_all
b1 = Booking.create :title => 'booking test 1'
b2 = Booking.create :title => 'booking test 2'
b3 = Booking.create :title => 'booking test 3'

puts "#{ Booking.count } bookings."

Trip.destroy_all
t1 = Trip.create :title => 'Sydney to Jindabyne', :image => 'https://cdn.oem-production.subaru.com.au/media/7832/my21-outback-awd-touring-icesilvermetallic-front.jpg', :car_make => "Suburu", :car_model => "Outback", :price => "10", :seat => '2', :time => "7:00", :date => "10/04/2022"
t2 = Trip.create :title => 'Sydney to Canberra', :image => 'https://cdn.motor1.com/images/mgl/3M0KX/s1/2021-hyundai-i30-n-line.webp', :car_make => "Hyundai", :car_model => "i30", :price => "10", :seat => '2', :time => "10:00", :date => "10/04/2022"
t3 = Trip.create :title => 'Sydney to Byron Bay', :image => 'https://bringatrailer.com/wp-content/uploads/2021/08/1968_volkswagen_bus_16329700613218fc5c81968_volkswagen_bus_16306476305d565ef66e7dff21de6ebc-fa49-4dba-b9f2-e17336b96d59-UtMwXd.jpg?fit=940%2C626', :car_make => "Volkswagon", :car_model => "Kombi", :price => "15", :seat => '4', :time => "17:00", :date => "10/04/2022"

puts "#{ Trip.count } trips."