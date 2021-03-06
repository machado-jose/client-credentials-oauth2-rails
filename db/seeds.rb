# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Doorkeeper::Application.count.zero?
  Doorkeeper::Application.create!(name: "App 1", redirect_uri: "", scopes: "index")
  Doorkeeper::Application.create!(name: "App 2", redirect_uri: "", scopes: "commom")
end

User.first_or_create(email: 'test@example.com',
                     password: 'password',
                     password_confirmation: 'password'
)
