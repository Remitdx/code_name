# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Game.destroy_all # if Rails.env.development?
User.destroy_all # if Rails.env.development?

puts 'Creating a game'
Game.create()

puts 'Creating some users'
user1 = User.create!(email: "florimond@gmail.com", password: "azerty", pseudo: "Flori")
user2 = User.create!(email: "remi@gmail.com", password: "azerty", pseudo: "Kodoliprane")
user3 = User.create!(email: "fx@wagon.com", password: "azerty", pseudo: "FX")

puts "everything worked!"
