# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# CATEGORIES = %w[chinese italian japanese french belgian].freeze

puts 'Generating 5 restaurants'
5.times do
  r = Restaurant.new
  r.name = Faker::Restaurant.name
  r.address = Faker::Address.full_address
  r.phone_number = Faker::PhoneNumber.phone_number
  r.category = Restaurant::CATEGORIES.sample
  r.save
end

puts 'Generated 5 restaurants'
