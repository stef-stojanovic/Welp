
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Customer.destroy_all
Food.destroy_all


10.times do
    name = Faker::Restaurant.name
    type = Faker::Restaurant.type 
    description = Faker::Restaurant.description
    zip = Faker::Address.zip
    address = Faker::Address.street_address
    phone_number = Faker::PhoneNumber.cell_phone
    Restaurant.create(name: name, restaurant_type: type, description: description, street_address: address, zip: zip, phone_number: phone_number)
end

Customer.create(name: "Stefan Stojanovic", username: "stefan.stojanovic", password: "1234", description: "Flatiron", img_url:  "https://media.licdn.com/dms/image/C5603AQElx_wuovn-kw/profile-displayphoto-shrink_200_200/0?e=1566432000&v=beta&t=mpvI6QKcoXfYmEtebsU7TGPzcIIqZBzwqAoUXloEC2U")
Customer.create(name: "Raúl Sanchez", username: "raul", password: "1234", description: "Flatiron", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0qn1cOiqWV_iC7zy9lRNekuH8mJtlpVt0gLLRyZI_2-fPDUvbkA")
Customer.create(name: "Kurtis Leach", username: "kurtis", password: "1234", description: "Flatiron", img_url: "https://i2.wp.com/bluebonnetnews.com/wp-content/uploads/2018/12/Lawrence-Gilbert-Graham.jpg?fit=170%2C220&ssl=1")
Customer.create(name: "Ariq Holland", username: "ariq", password: "1234", description: "Flatiron", img_url: "https://static.hudl.com/users/prod/7915937_e1584f62c5974f16bc32a333726bed3b.jpg")
Customer.create(name: "Roysan Easo", username: "roy", password: "1234", description: "Flatiron", img_url: "https://pbs.twimg.com/profile_images/441775443637587969/1pUndhe9.jpeg")
Customer.create(name: "Ethan Feinberg", username: "ethan", password: "1234", description: "Flatiron", img_url: "https://media.licdn.com/dms/image/C4E03AQFHWjbV6DAteA/profile-displayphoto-shrink_200_200/0?e=1566432000&v=beta&t=69-SdbkNhbIWw88B7lY-Eou_X5d2ukyfXel29uRhNu8")

Food.create(restaurant_id: Restaurant.first.id, name: "Wings", description: " ", price: 10, img_url: "https://www.buffalowildwings.com/globalassets/menuitems/bww_traditionalwings_sauce.png?format=jpg&width=900&v=2")
Food.create(restaurant_id: Restaurant.first.id, name: "Burger", description: " ", price: 10, img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2017/5/10/0/FNM_060117-Smashburger-Style-Burgers-Recipe_s4x3.jpg.rend.hgtvcom.616.462.suffix/1494459418304.jpeg")
Food.create(restaurant_id: Restaurant.first.id, name: "Fries", description: " ", price: 10, img_url: "https://againstallgrain.com/wp-content/uploads/2019/02/IMG_3404.jpg")
Food.create(restaurant_id: Restaurant.first.id, name: "Pizza", description: " ", price: 10, img_url: "https://www.cicis.com/wp-content/uploads/2019/04/pizza_categoryheader.png")
Food.create(restaurant_id: Restaurant.second.id, name: "Salmon Roll", description: " ", price: 10, img_url: "http://www.makesushi.com/wp-content/uploads/2015/11/top-image-salmon-roll.jpg")
Food.create(restaurant_id: Restaurant.second.id, name: "Rainbow Roll", description: " ", price: 10, img_url: "https://i.pinimg.com/originals/f7/e6/24/f7e62435baad8e0e17faee7911ce4ac2.jpg")
Food.create(restaurant_id: Restaurant.second.id, name: "Edamame", description: " ", price: 10, img_url: "https://umamigirl.com/wp-content/uploads/2018/11/Wagamama-style-Chili-Salt-Edamame-780-Umami-Girl-720x540.jpg")
Food.create(restaurant_id: Restaurant.second.id, name: "Philadelphia Roll", description: " ", price: 10, img_url: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/114292.jpg")
Food.create(restaurant_id: Restaurant.third.id, name: "Italian Sub", description: " ", price: 10, img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/2/4/1/RX-FNM_030111-Weeknight-Dinners-025_s4x3.jpg.rend.hgtvcom.826.620.suffix/1382539864691.jpeg")
Food.create(restaurant_id: Restaurant.third.id, name: "Philly Cheese Steak", description: " ", price: 10, img_url: "https://assets.epicurious.com/photos/578e746c95824bf90525e568/master/pass/michaels-famous-philly-cheese-steak-sandwich.jpg")
Food.create(restaurant_id: Restaurant.third.id, name: "Turkey Sub", description: " ", price: 10, img_url: "https://www.firehousesubs.com/media/1258/plain-turkey.png?crop=0.12445677275780997,0.19653716689060591,0.245714540644944,0.21251246049963238&cropmode=percentage&width=675&height=500&rnd=131668848070000000")
Food.create(restaurant_id: Restaurant.third.id, name: "Chicken Sub", description: " ", price: 10, img_url: "https://www.firehousesubs.com/media/1986/q1_2019_spicy_cajun_chicken_02-1.png?crop=0.26153482601760497,0.14720892984909054,0,0.21552297556610195&cropmode=percentage&width=675&height=500&rnd=131917023280000000")
