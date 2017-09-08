# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Page.destroy_all
Story.destroy_all
Universe.destroy_all

4.times do
  Universe.create!(name: Faker::StarWars.planet)
end

puts "Universe Done"


Universe.all.each do |universe|
  3.times do
    universe.stories.create!(name: Faker::StarWars.specie)
  end
end

puts "stories Done"

Story.all.each do |story|
  3.times do |i|
    story.pages.create!(content: Faker::StarWars.quote)
  end
end

puts "pages Done"
