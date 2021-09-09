# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

300.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraphs(number: 1),
    rating: rand(0..5)
  )
end

10.times do
  List.create(
    name: Faker::Book.genre
  )
end

25.times do
  Bookmark.create(
    comment: Faker::Lorem.paragraphs(number: 1),
    list: List.all.sample,
    movie: Movie.all.sample
  )
end
