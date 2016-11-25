# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "55 11 7777 1245",
    category:     "japanese"
  },
  {
    name:         "Como assim",
    address:      "Praza calixto",
    phone_number: "55 11 1234 1850",
    category:     "french"
  },
  {
    name:         "Kebab",
    address:      "Teodoro Sampaio",
    phone_number: "55 11 1234 1245",
    category:     "italian"
  },
  {
    name:         "McDonalds",
    address:      "Teodoro Zampaio",
    phone_number: "55 11 1234 9945",
    category:     "italian"
  },
  {
    name:         "Burguer king",
    address:      "Leodoro Sampaio",
    phone_number: "55 11 1414 1245",
    category:     "italian"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }

Restaurant.all.each do |rest|
  rest.reviews.create(content: "abcd", rating: 5 )
  rest.reviews.create(content: "xcv", rating: 3 )
end
