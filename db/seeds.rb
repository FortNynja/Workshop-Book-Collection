# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create user
# 10.times do
#   User.create!(
#     email: Faker::Internet.email,
#     username: Faker::Internet.unique.username,
#     password: 'asdf1234'
#   )
# end
# Create author
10.times do
  Author.create!(name: Faker::Book.unique.author)
end
# Create publisher
10.times do
  Publisher.create!(name: Faker::Book.unique.publisher)
end
# Create books
10.times do
  Book.create!(title: Faker::Book.unique.title, publisher: Publisher.all.sample)
end
# Create Reviews
10.times do
  Review.create!(
    book: Book.all.sample,
    content: Faker::Lorem.paragraph,
    name: Faker::Name.name
  )
end
# Add Authors to Books
Book.all.each do |book|
  num_of_author = [1, 2].sample
  book.authors << Author.all.sample(num_of_author)
end