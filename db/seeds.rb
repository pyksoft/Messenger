# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!( email: 'one@example.com', password: 'password' )
user2 = User.create!( email: 'two@example.com', password: 'password' )
user3 = User.create!( email: 'three@example.com', password: 'password' )
user4 = User.create!( email: 'four@example.com', password: 'password' )
user5 = User.create!( email: 'five@example.com', password: 'password' )


Profile.create! [
  { name: 'One', user: user1 },
  { name: 'Two', user: user2 },
  { name: 'Three', user: user3 },
  { name: 'Four', user: user4 },
  { name: 'Five', user: user5 },
]