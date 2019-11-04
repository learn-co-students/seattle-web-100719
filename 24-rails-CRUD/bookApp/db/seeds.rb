# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all

GoogleBooks::Adapter.new("Brandon Sanderson").fetch_books
GoogleBooks::Adapter.new("Brian Christian").fetch_books
GoogleBooks::Adapter.new("Margaret Atwood").fetch_books
