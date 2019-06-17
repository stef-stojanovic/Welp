
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
    name = Faker::Restaurant.name
    type = Faker::Restaurant.type 
    description = Faker::Restaurant.description
    zip = Faker::Address.zip
    address = Faker::Address.street_address
    phone_number = Faker::PhoneNumber.cell_phone
    Restaurant.create(name: name, restaurant_type: type, description: description, street_address: address, zip: zip, phone_number: phone_number)

end

stefan = Customer.create(name: "Stefan Stojanovic", username: "stefan.stojanovic", password: "1234", description: "Flatiron")