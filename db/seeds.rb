# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "cleaning database"
Booking.destroy_all
Tool.destroy_all
User.destroy_all


user_one = User.create(
  email: "visitor@lewagon.com",
  password: "123456",
  first_name: "Ethan",
  last_name: "Lane"
)

i = 1
5.times do
  puts "creating user #{i}"
  User.create!(
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  i += 1
end


Tool.create(tool_name: "Lawn Mower", description: "Amazing to mow lawns, cuts grass like a machine made to cut grass", category: "Garden", price: 240, user_id: user_one.id)
Tool.create(tool_name: "Fork Lift", description: "Very useful for lifting heavy stuff", category: "Warehouse", price: 1020, user_id: user_one.id)
Tool.create(tool_name: "Cement Mixer", description: "Excellent for mixing cement,", category: "building", price: 800, user_id: user_one.id)
Tool.create(tool_name: "Chainsaw", description: "It cuts through trees like a knife through hot butter", category: "Garden", price: 700, user_id: user_one.id)
Tool.create(tool_name: "Boomlift", description: "If you need to get something from a height", category: "Warehouse", price: 2800, user_id: user_one.id)
Tool.create(tool_name: "Drill", description: "If you wanna drill something, is there anything better than this drill", category: "Building", price: 3000, user_id: user_one.id)


# 6.times do
#   puts "creating tools"
#   Tool.create!(
#     tool_name: Faker::ElectricalComponents.electromechanical,
#     description: Faker::Lorem.sentence,
#     category: Faker::Commerce.department,
#     price: rand(5..50),
#     user_id: rand(1..5)
#   )
# end
