# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"


puts "cleaning db"
Membership.destroy_all
User.destroy_all
Group.destroy_all
Plan.destroy_all
Place.destroy_all
puts "clean"

puts "creating a user"

user1 = User.create!(
  email: "mikey@gmail.com",
  password: "123456")

puts "creating a group"

place1 = Place.new(name: "Nandos", address: "Paris", category: "Food & Drink")
file = URI.open('https://www.yorkpress.co.uk/resources/images/11410514.jpg')
place1.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
place1.save

place2 = Place.new(name: "Good Godfrey's", address: "London", category: "Bar")
file = URI.open('https://www.yorkpress.co.uk/resources/images/11410514.jpg')
place2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
place2.save

place3 = Place.new(name: "ATIK", address: "Oxford", category: "Nightclub")
file = URI.open('https://www.yorkpress.co.uk/resources/images/11410514.jpg')
place3.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
place3.save

place4 = Place.new(name: "Mauerpark", address: "Berlin", category: "Outdoors")
file = URI.open('https://www.yorkpress.co.uk/resources/images/11410514.jpg')
place4.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
place4.save


FamilyGroup = Group.create(name: "Family")

puts "joining a user to a group"

Membership.create(group_id: 1, user_id: 1)

puts "creating a place"

puts "creating a plan"

Plan.create(place_id: 1, user_id: 1, date: "26/05/2020")

