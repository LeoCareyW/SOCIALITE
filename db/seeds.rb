# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
places = Place.create({name: "Breakfast Club", address: "London", category: "Bar", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae debitis, quam, in corrupti, cum deserunt nulla maiores tempore soluta minima quae voluptatum dicta adipisci sapiente ipsum impedit veniam eos, voluptate."})


puts "checking..."
places
puts "completed making Breakfast Club"
