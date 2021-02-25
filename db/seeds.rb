# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "coach1@email.edu", password: "testing1")
user = User.create(email: "coach2@email.edu", password: "testing2")
user = User.create(email: "coach3@email.edu", password: "testing3")

if ENV["tournaments"] # including this to have control over what will be seeded -- use 'rails db:seed tournaments=yes'
  5.times do
    Tournament.create(name: "", city: "", state: "", start_date: "")
  end
end

