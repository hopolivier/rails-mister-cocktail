# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "grapefruit")
Ingredient.create(name: "orange")
Ingredient.create(name: "sugar")
Ingredient.create(name: "gin")
Ingredient.create(name: "whiskey")
Ingredient.create(name: "vodka")
Ingredient.create(name: "vanila")
Ingredient.create(name: "strawberry")
Ingredient.create(name: "peer")
