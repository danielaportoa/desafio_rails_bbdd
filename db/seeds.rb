# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do |i|
  Movie.create(
    title: "title #{i}",
    original_title: "original_title #{i}",
    director: "director #{i}",
    year: "year #{i}",
    country: "country #{i}",
    duration: "duration #{i}",
    sinopsis: "sinopsis #{i}"
  )
end

10.times do |i|
  Serie.create(
    title: "title #{i}",
    original_title: "original_title #{i}",
    season: "season #{i}"
    director: "director #{i}",
    year: "year #{i}",
    country: "country #{i}",
    duration: "duration #{i}",
    sinopsis: "sinopsis #{i}"
  )
end

10.times do |i|
  Documentaryfilm.create(
    title: "title #{i}",
    original_title: "original_title #{i}",
    director: "director #{i}",
    year: "year #{i}",
    country: "country #{i}",
    duration: "duration #{i}",
    sinopsis: "sinopsis #{i}"
  )
end

