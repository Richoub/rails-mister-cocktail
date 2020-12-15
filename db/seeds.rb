# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "cleaning up database"

Ingredient.destroy_all
Cocktail.destroy_all

puts "database is clean"

puts "Creating ingredients"
file = URI.open('https://www.thespruceeats.com/thmb/8w9Zmdiva5L23O_HJhjgYC-jKEU=/1365x1365/smart/filters:no_upscale()/tequila-sunrise-recipe-760754-19_preview-5b02f856119fa80037651942.jpeg')
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "whisky")
Ingredient.create(name: "orange peel")
Ingredient.create(name: "rum")
Ingredient.create(name: "coca cola")
Cocktail.create(name: "old fashioned", image: "of.jpg")
Cocktail.create(name: "gin & tonic", image: "gt.jpg")
Cocktail.create(name: "moscow mule", image: "mm.jpg")
Cocktail.photo.attach(io: file, filename: 'cocktail.jpeg, content_type: image/jpeg')
Dose.create(description: "2 shots")
Dose.create(description: "1 measure")
puts "done"
