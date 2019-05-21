# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    phone_number: '0676028576',
    category: 'french'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: 'O1713498485',
    category: 'belgian'
  },
  {
    name: 'Soleil Levant',
    address: '14 Rue Juliette Dodu, 75010 Paris',
    phone_number: 'O171343097',
    category: 'japanese'
  },
  {
    name: 'Budha Bar',
    address: '15-1 Rue Dupleix, 75014',
    phone_number: 'O1713498501',
    category: 'japanese'
  },
  {
    name: 'Blue Elephant',
    address: '56A Shoreditc High St, London E1 6PQ',
    phone_number: 'O17498798723',
    category: 'italian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
