# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times do
  Universe.new(name: Faker::StarWars.planet).save
end

puts "Universe Done"

universes = Universe.all

universes.each do |universe|
  3.times do |i|
    universe.stories.new(name: Faker::StarWars.specie, position: i + 1).save
  end
end

puts "stories Done"
