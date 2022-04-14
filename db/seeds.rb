# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

u1 = User.create :first_name => 'Jane', :last_name => 'Doe', :email => 'janedoe@ga.co', :password => 'seed1', :image => 'i30senhwtl4tknfbadw2'
u2 = User.create :first_name => 'John', :last_name => 'Smith', :email => 'johnsmith@ga.co', :password => 'seed2', :image => 'qzyku0gvnq3hqzollygr'
u3 = User.create :first_name =>'Kris', :last_name => 'Wong', :email => 'kris@ga.co', :password => '1234', :image => 'kghhamtmyguftx2kbcro'
u4 = User.create :first_name =>'Claire', :last_name => 'Williams', :email => 'claire@ga.co', :password => '1234', :image => 'syqfh3qslzwhpmgyb0pb'
u5 = User.create :first_name =>'Ben', :last_name => 'Miller', :email => 'ben@ga.co', :password => '1234', :image => 'tlzggrlbucpjhjejhw39'
u6 = User.create :first_name =>'Jasmin', :last_name => 'Yusuf', :email => 'jas@ga.co', :password => '1234', :image => 'ehhulnbtfqy6gfrcdub3'
u7 = User.create :first_name =>'Shaq', :last_name => 'gif-test', :email => 'shaq@ga.co', :password => '1234', :image => 'qdwm6a4xh8h8ualiuwgf'
u8 = User.create :first_name => 'Testing', :last_name => 'User Icon', :email => 'test@ga.co', :password => '1234'

puts "#{ User.count } users."

Booking.destroy_all

b1 = Booking.create 
b2 = Booking.create 
b3 = Booking.create 
b4 = Booking.create 
b5 = Booking.create 
b6 = Booking.create 
b7 = Booking.create 
b8 = Booking.create 
b9 = Booking.create 
b10 = Booking.create 
b11 = Booking.create 
b12 = Booking.create 


puts "#{ Booking.count } bookings."

Trip.destroy_all

t1 = Trip.create :title => 'Sydney to Jindabyne', :image => 'fd33pjgxt4fas1ctzyvx', :car_make => "Suburu", :car_model => "Outback", :price => "10", :seat => '2', :time => "7:00", :date => "10/06/2022", :origin => 'Sydney', :destination => 'Jindabyne'
t2 = Trip.create :title => 'Sydney to Canberra', :image => 'zpatqzwi0og49shesyau', :car_make => "Hyundai", :car_model => "i30", :price => "10", :seat => '2', :time => "10:00", :date => "11/06/2022", :origin => 'Sydney', :destination => 'Canberra', :description => 'Message me with any questions!'
t3 = Trip.create :title => 'Sydney to Byron Bay', :image => 'cdlaudwkz7mjyb2y0cgw', :car_make => "Volkswagon", :car_model => "Kombi", :price => "15", :seat => '4', :time => "17:00", :date => "12/06/2022", :origin => 'Sydney', :destination => 'Byron Bay', :description => 'I can drop passengers anywhere along this trip'
t4 = Trip.create :title => 'Sydney to Byron Bay', :image => 'cdlaudwkz7mjyb2y0cgw', :car_make => "Volkswagon", :car_model => "Kombi", :price => "15", :seat => '4', :time => "17:00", :date => "12/04/2022", :origin => 'Sydney', :destination => 'Byron Bay'
t5 = Trip.create :image => 'fd33pjgxt4fas1ctzyvx', :car_make => "Suburu", :car_model => "Outback", :price => "10", :seat => '2', :time => "7:00", :date => "10/04/2022", :origin => 'Jindabyne', :destination => 'Sydney'
t6 = Trip.create :image => 'x3gzluou1x0kt72kkmm4', :car_make => 'Tesla', :car_model => 'Model 3', :price => '25', :seat => '2', :time => '9:00', :date => '08/08/2025', :origin => 'Newcastle, NSW', :destination => 'Bellingen'
t7 = Trip.create :image => 'ce73tcldrrtkx2ksynkw', :car_make => 'Hyundai', :car_model => 'i30', :price => '10', :seat => '2', :time => '8:00', :date => '07/09/2022', :origin => 'Bundaberg', :destination => 'Mooloolaba', :description => "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
t8 = Trip.create :image => 'cdlaudwkz7mjyb2y0cgw', :car_make => 'Volkswagon', :car_model => 'Kombi', :price => '15', :seat => '4', :time => '6:00', :date => '10/04/2024', :origin => 'Warrnambool', :destination => 'Bells Beach', :description => 'Heading to the Bells Beach Surf Comp'
t9 = Trip.create :image => 'vxb3symswzw7wdjvrkey', :car_make => 'Jeep', :car_model => 'Wrangler', :price => '20', :seat => '3', :time => '8:30', :date => '10/10/2023', :origin => 'Melbourne', :destination => 'Grampians National Park', :description => 'Going climbing! Any climbers are welcome to join me at the crags'
t10 = Trip.create :car_make => 'Hyundai', :car_model => 'i30', :price => '10', :seat => '3', :time => '5:00', :date => '5/02/2023', :origin => 'Mackay', :destination => 'Whitsundays'
t11 = Trip.create :image => 'vxb3symswzw7wdjvrkey', :car_make => 'Jeep', :car_model => 'Wrangler', :price => '50', :seat => '3', :time => '6:00', :date => '17/10/2023', :origin => 'Fremantle', :destination => 'Margaret River'
t12 = Trip.create :image => 'vxb3symswzw7wdjvrkey', :car_make => 'Jeep', :car_model => 'Wrangler', :price => '50', :seat => '2', :time => '8:00', :date => '5/11/2023', :origin => 'Adelaide', :destination => 'Barossa Valley'


puts "#{ Trip.count } trips."


Comment.destroy_all
c1 = Comment.create :content => "What time do you think we'll reach our destination?"
c2 = Comment.create :content => "Will you go past Central Station?"
c3 = Comment.create :content => "Yes, I will be picking up from Central Station"
c4 = Comment.create :content => "Awesome! Can't wait!"
c5 = Comment.create :content => "How much baggage will you allow?"
c6 = Comment.create :content => "Reckon I could fit my surfboard in your car?"
c7 = Comment.create :content => "Do you accept pets?"
c8 = Comment.create :content => "Do you have room for a snowboard?"
c9 = Comment.create :content => "Yes I have room!"
c10 = Comment.create :content => "I have room for one large bag and a small bag"
c11 = Comment.create :content => "Do you have room for an Organic crashpad?"
c12 = Comment.create :content => "Yep!"

puts "#{ Comment.count } comments."

u1.trips << t1 << t2 << t5
u2.trips << t3 << t4 << t8
u4.trips << t6
u5.trips << t10 << t9
u6.trips << t7
u7.trips << t11 << t12

u1.comments << c1 << c3 << c9 << c10
u3.comments << c2 << c4 << c7 << c11
u6.comments << c5
u7.comments << c6
u2.comments << c8
u5.comments << c12

t3.comments << c1
t1.comments << c2 << c3 << c4 << c8 << c9
t2.comments << c5 << c10
t8.comments << c6
t7.comments << c7
t9.comments << c11 << c12

u1.bookings << b1
u2.bookings << b2
u2.bookings << b3
u3.bookings << b4
u3.bookings << b5
u3.bookings << b6
u6.bookings << b7
u6.bookings << b8
u1.bookings << b9
u7.bookings << b10
u7.bookings << b11
u7.bookings << b12


t1.bookings << b2 << b6
t3.bookings << b1 
t2.bookings << b7
t4.bookings << b11
t5.bookings << b12
t8.bookings << b10
t9.bookings << b4
t11.bookings << b9 << b3
t12.bookings << b8 << b5