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

5.times do
  Tournament.create(name: "All American Showcase", city: "Kingwood", state: "IL", start_date: "2020-09-05")
end

5.times do
  Event.create(name: "Event", date: "2022-02-02")
end

8.times do
  Team.create(name: "Westwood Wildcats", age_group: "high school", coach: "Phil Jackson")
end

8.times do
  Player.create(first_name: "Greatest", last_name: "Ever", height: 68, weight: 172, birthday: "1988-05-05", graduation_year: 2020, position: "center", recruit: true)
end
