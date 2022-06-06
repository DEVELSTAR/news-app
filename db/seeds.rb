# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: 'akeebudeen786@gmail.com', password: 'star143star', password_confirmation: 'star143star')

10.times do |x|
  Magazine.create(title: "Title #{x}", description: "Body #{x} Words go here Idk", user_id: User.first.id)
end