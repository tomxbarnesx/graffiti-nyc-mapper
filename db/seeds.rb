# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Piece.create(title: "Marshmallow Man", lat: 40.706444, lng:-73.922721);
# Piece.create(title: "Muscly Liger", lat: 40.705891, lng:-73.922410);

User.create(first_name: "NY", last_name: "Admin", email: "admin@test.com", is_admin: true, birthdate: "19900313", bio: "Admin responsible for maintaing the NYC graffiti maps project.", username: "nyadmin", password: "password");
User.create(first_name: "Frank", last_name: "Sinatra", email: "test@test.com", is_admin: false, birthdate: "19910313", bio: "Test account for the NYC graffiti maps project. From the heart of the city, for the heart of the city.", username: "frankiesinatra", password: "password");