# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

500.times do |i|
  Link.create!({
                 title: "Title#{i}",
                 external_url: Faker::Internet.url(scheme: 'https'),
                 visits_count: rand(1000)
               })
end
