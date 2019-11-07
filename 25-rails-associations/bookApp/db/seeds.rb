# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all

GoogleBooks::Adapter.new("Neal Stephenson").fetch_books
GoogleBooks::Adapter.new("Julia Serano").fetch_books
GoogleBooks::Adapter.new("Hegel").fetch_books

Author.create(name: "Shawn")
Author.create(name: "Jen")
Author.create(name: "Squid")
