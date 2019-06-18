
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

stefan = Customer.create(name: "Stefan Stojanovic", username: "stefan.stojanovic", password: "1234", description: "Flatiron", img_url:  "https://media.licdn.com/dms/image/C5603AQElx_wuovn-kw/profile-displayphoto-shrink_200_200/0?e=1566432000&v=beta&t=mpvI6QKcoXfYmEtebsU7TGPzcIIqZBzwqAoUXloEC2U")
raul = Customer.create(name: "Raúl Sanchez", username: "raul", password: "1234", description: "Flatiron", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0qn1cOiqWV_iC7zy9lRNekuH8mJtlpVt0gLLRyZI_2-fPDUvbkA")
stefan = Customer.create(name: "Kurtis Leach", username: "kurtis", password: "1234", description: "Flatiron", img_url: "https://i2.wp.com/bluebonnetnews.com/wp-content/uploads/2018/12/Lawrence-Gilbert-Graham.jpg?fit=170%2C220&ssl=1")
ariq = Customer.create(name: "Ariq Holland", username: "ariq", password: "1234", description: "Flatiron", img_url: "https://static.hudl.com/users/prod/7915937_e1584f62c5974f16bc32a333726bed3b.jpg")
roy = Customer.create(name: "Roysan Easo", username: "roy", password: "1234", description: "Flatiron", img_url: "https://pbs.twimg.com/profile_images/441775443637587969/1pUndhe9.jpeg")
ethan = Customer.create(name: "Ethan Feinberg", username: "ethan", password: "1234", description: "Flatiron", img_url: "https://media.licdn.com/dms/image/C4E03AQFHWjbV6DAteA/profile-displayphoto-shrink_200_200/0?e=1566432000&v=beta&t=69-SdbkNhbIWw88B7lY-Eou_X5d2ukyfXel29uRhNu8")
