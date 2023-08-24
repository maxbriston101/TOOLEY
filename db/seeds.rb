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



Tool.create!(tool_name: "Lawn Mower", description: "Efficiently maintain your lawn with our advanced lawn mower for sale. Equipped with a powerful gas engine, adjustable cutting heights, and a spacious grass catcher, it effortlessly delivers a pristine finish. Say goodbye to overgrown grass and hello to a perfectly manicured lawn. Your yard deserves the best!", category: "Garden", price: 240, user_id: user_one.id, image: "lawnmower.jpg")
Tool.create!(tool_name: "Fork Lift", description: "Boost productivity with our reliable forklift for sale. This industrial workhorse boasts a robust design, impressive lifting capacity, and intuitive controls for seamless operation. Whether in warehouses or construction sites, streamline heavy lifting tasks with confidence. Invest in efficiency and elevate your operations today!", category: "Warehouse", price: 1020, user_id: user_one.id, image: "forklift.jpg")
Tool.create!(tool_name: "Cement Mixer", description: "Elevate your construction projects with our cement mixer for sale. This heavy-duty machine effortlessly blends cement, creating a consistent mix for sturdy foundations. With a sizable drum, user-friendly controls, and durable construction, it's the ideal tool for professionals and DIY enthusiasts alike. Build with precision and quality.", category: "building", price: 800, user_id: user_one.id, image: "cementmixertooley.jpg")
Tool.create!(tool_name: "Chainsaw", description: "Unleash your cutting tasks with our chainsaw for sale. Powered by a high-performance engine, its sharp chain tackles trees and branches effortlessly. With ergonomic handles and safety features, it ensures efficient and secure operation. From pruning to felling, make your outdoor tasks a breeze with this reliable tool.", category: "Garden", price: 700, user_id: user_one.id, image: "chainsaw.jpg")
Tool.create!(tool_name: "Boom Lift", description: "Elevate your work to new heights with our boom lift for sale. This versatile machine offers impressive reach and stability, perfect for construction or maintenance tasks. With easy-to-use controls and rugged design, gain access to elevated areas with confidence. Enhance your efficiency and safety with this essential equipment", category: "Warehouse", price: 2800, user_id: user_one.id, image: "boomlift.jpg")
Tool.create!(tool_name: "Drill", description: "Upgrade your toolbox with our drill for sale. This high-powered tool effortlessly bores through various materials, equipped with adjustable speed settings for precision. With a comfortable grip and interchangeable bits, it's perfect for DIY projects and professional use. Make drilling tasks efficient and enjoyable with this reliable and versatile tool.", category: "Building", price: 3000, user_id: user_one.id, image: "power-drill.jpg")



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
