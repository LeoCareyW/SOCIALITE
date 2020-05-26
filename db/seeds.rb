# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

FamilyGroup = Group.create(name: "Family")

puts "joining a user to a group"

Membership.create(group_id: 1, user_id: 1)

puts "creating a place"

Nandos = Place.create(name: "Nandos", address: "NW22BS", category: "Food & Drink")

puts "creating a plan"

NandosPlan = Plan.create(place_id: 1, user_id: 1, date: "26/05/2020")




