puts "Cleaning up database..."
Restaurant.destroy_all

CATEGORIES = %w[chinese italian japanese french belgian]

puts "Creating restaurants..."
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: CATEGORIES.sample
  )
  restaurant.save!
  puts "Restaurant #{restaurant.id} created"
end

puts "Finished!"
