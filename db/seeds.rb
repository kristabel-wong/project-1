# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

u1 = User.create :first_name => 'Jane', :last_name => 'Doe', :email => 'janedoe@ga.co', :password => 'seed1'
u2 = User.create :first_name => 'John', :last_name => 'Smith', :email => 'johnsmith@ga.co', :password => 'seed2'

puts "#{ User.count } users."