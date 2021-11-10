# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
5.times do
  Restaurant.create!(name:Faker::Coffee.blend_name,
                    address:Faker::Address.full_address,
                    phone_number:Faker::PhoneNumber.phone_number,
                    category:["chinese", "italian", "japanese", "french", "belgian"].sample)
end

first_restaurant = Restaurant.first

50.times do
  Review.create!(
    rating: rand(0..5),
    content: Faker::Quote.famous_last_words,
    restaurant: Restaurant.all.sample
  )
end
