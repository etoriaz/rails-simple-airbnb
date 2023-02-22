# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flat.destroy_all
puts 'Creating flats..'
10.times do
  Flat.create!(
    name: 'Ocean Breeze Retreat',
    address: Faker::Address.street_address,
    description: "This beautifully appointed apartment is the epitome of urban luxury, with its sleek finishes, gourmet kitchen,
    and stunning city views. Whether you're hosting a dinner party or simply enjoying a glass of wine on the balcony,
    you'll feel like you've found your dream home.",
    price_per_night: rand(70..120),
    number_of_guests: rand(1..5)
  )
end
puts 'Finished =)'
