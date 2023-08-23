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


user_one = User.create!(
  email: "visitor@lewagon.com",
  password: "123456",
  first_name: "Ethan",
  last_name: "Lane"
)

# i = 1
# 5.times do
#   puts "creating user #{i}"
#   User.create!(
#     username: Faker::Internet.username,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password
#   )
#   i += 1
# end



Tool.create(tool_name: "Lawn Mower", description: "
  Introducing our premium Lawn Mower, available for rent!
  Experience the epitome of efficiency and convenience in lawn maintenance
  with our state-of-the-art rental solution. This robust and versatile mower
  is designed to elevate your landscaping endeavors while making the task a breeze.
  With its powerful engine, ergonomic design, and user-friendly controls, achieving
  a perfectly manicured lawn has never been easier. Whether you're tackling a small
  backyard or a sprawling garden, our Lawn Mower guarantees a seamless experience,
   saving you time and effort. Elevate your lawn care game today by renting our top-tier Lawn Mower
   – the key to a stunning and well-groomed outdoor space.",
  category: "Garden", price: 20, user_id: user_one.id)
Tool.create(tool_name: "Fork Lift", description: "Introducing our exceptional Forklift,
  now available for rent! Revolutionize your material handling operations with our
  top-of-the-line rental solution. This robust and versatile forklift is meticulously
  engineered to enhance productivity and streamline your logistics tasks. Equipped with
  advanced features, ergonomic controls, and impressive lifting capacity, our Forklift
  ensures optimal efficiency while reducing downtime. Whether you're managing a warehouse,
   a construction site, or a distribution center, our Forklift guarantees seamless and
   safe operation, empowering you to handle heavy loads with ease. Upgrade your material
   handling capabilities today by renting our premium Forklift – your gateway to efficient,
   reliable, and precision-driven lifting.", category: "Warehouse", price: 100, user_id: user_one.id)
Tool.create(tool_name: "Cement Mixer", description: "Transform your construction projects
  with the power of seamless concrete mixing using our cutting-edge rental solution.
  This robust and efficient cement mixer is engineered to deliver consistent
  and homogenous concrete batches, ensuring your construction work progresses smoothly.
  With its user-friendly controls, sturdy build, and optimal mixing capacity,
  our Cement Mixer takes the hassle out of concrete preparation,
  allowing you to focus on building without interruption.
  Whether you're working on a small DIY project or a large-scale construction site,
   our Cement Mixer promises reliability and precision, making the process more efficient
    and less labor-intensive. Elevate your construction experience today by renting our
    top-tier Cement Mixer – your gateway to superior concrete mixing and exceptional results.",
     category: "building", price: 150, user_id: user_one.id)
Tool.create(tool_name: "Chainsaw", description: "
  Experience the epitome of cutting-edge technology with our
  Chainsaw rental! Designed to empower your tree maintenance and cutting tasks,
  this professional-grade tool offers a perfect blend of power,
  precision, and ease of use. Its robust build and advanced features
ensure efficient performance, while ergonomic design guarantees comfort
   during extended use. Whether you're a seasoned arborist or a DIY enthusiast,
   our Chainsaw is your trusted companion for effortlessly achieving impeccable
   results in tree cutting and beyond. Elevate your cutting endeavors by renting
    the Chainsaw that combines reliability with innovation.", category: "Garden", price: 25, user_id: user_one.id)
Tool.create(tool_name: "Boomlift", description: "Introducing our top-tier Boomlift,
   now available for rent! Elevate your projects to new heights with this exceptional
   aerial work platform. Designed to provide safe and efficient access for tasks that
   require reaching elevated areas, our Boomlift offers a versatile solution for construction,
   maintenance, and more.", category: "Warehouse", price: 150, user_id: user_one.id)
Tool.create(tool_name: "Drill", description: "Introducing our high-quality Drill,
  available for rent! Unleash your creativity and precision
  with this versatile and reliable tool.
  Whether you're a professional contractor or a DIY enthusiast,
  our Drill offers the power and control you need for a wide range of drilling tasks.
  From woodworking to metalwork, our rental Drill delivers consistent performance,
   ensuring accurate holes and efficient operation. With ergonomic design and adjustable settings,
    it's perfect for projects of all sizes. Rent our Drill today and experience
    the satisfaction of effortlessly drilling through various materials,
    making your projects a hole lot easier!", category: "Building", price: 15, user_id: user_one.id)




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



# <div class="container">
#   <%= simple_form_for (@tool) do |f| %>
#   <%= f.input :tool_name %>
#   <%= f.input :description %>
#   <%= f.input :category %>
#   <%= f.input :price %>
#   <%= f.submit %>
#   <% end %>
# </div>




# i = 0
# 6.times do

#   Tool.create!(
#     tool_name: Faker::ElectricalComponents.electromechanical,
#     description: Faker::Lorem.sentence,
#     category: Faker::Commerce.department,
#     price: rand(5..50),
#     # user_id: rand(1..5)
#     image_url: images[i]

#   )

#   i += 1
# end



# user =  User.create!(
#   username: Faker::Internet.username,
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   email: "test@test.com",
#   password: "123456"
# )

# images = ["", "", "", "", "", "" ]
# i = 0


# 6.times do
#   tool = Tool.new(
#     tool_name: Faker::ElectricalComponents.electromechanical,
#     description: Faker::Lorem.sentence,
#     category: Faker::Commerce.department,
#     price: rand(5..50),
#     image_url: images[i]
#   )

#   tool.user = user
#   tool.save!

#   i += 1
# end
