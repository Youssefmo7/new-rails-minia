# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Creating Users...'
user1 = User.create!(
  name: 'John Doe',
  email: 'john@example.com',
  DOB: '1990-01-01',
  phone_number: '1234567890',
  address: '123 Main St'
)

user2 = User.create!(
  name: 'Jane Smith',
  email: 'jane@example.com',
  DOB: '1995-05-05',
  phone_number: '0987654321',
  address: '456 Oak St'
)

puts 'Creating Editors...'
editor1 = Editor.create!(
  name: 'Alice Editor',
  email: 'alice@example.com'
)

editor2 = Editor.create!(
  name: 'Bob Editor',
  email: 'bob@example.com'
)

puts 'Creating Posts...'
post1 = Post.create!(
  title: 'First Post',
  content: 'This is the content of the first post.',
  creator: user1
)

post2 = Post.create!(
  title: 'Second Post',
  content: 'Content for the second post.',
  creator: user2
)

puts 'Assigning Editors to Posts...'
post1.editors << editor1
post1.editors << editor2
post2.editors << editor1

puts 'Seeding complete!'
