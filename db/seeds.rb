# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

# <div class="container">
#   <%= simple_form_for (@tool) do |f| %>
#   <%= f.input :tool_name %>
#   <%= f.input :description %>
#   <%= f.input :category %>
#   <%= f.input :price %>
#   <%= f.submit %>
#   <% end %>
# </div>

Tool.destroy_all

require 'faker'

5.times do
  User.create!(
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end



6.times do
  Tool.create!(
    tool_name: Faker::ElectricalComponents.electromechanical,
    description: Faker::Lorem.sentence,
    category: Faker::Commerce.department,
    price: rand(5..50),
    user_id: rand(1..5)
  )
end
