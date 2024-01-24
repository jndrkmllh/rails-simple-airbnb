# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Flat.destroy_all

p "Starting to seed..."
4.times {
  p Flat.create!(
    name: Faker::Marketing.buzzwords,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(19..199),
    number_of_guests: rand(3..10)
  )
}
p "Seeding done."
