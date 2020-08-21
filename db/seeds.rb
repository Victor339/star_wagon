require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Spaceship.destroy_all
User.destroy_all
victor = User.create!(name:"Victor", age:"26", email: "victor@gmail.com", password: "123456", admin: true)
walid = User.create!(name:"Walid", age:"30", email: "walid@zoom.com", password: "micro-ouvert-a-vie", admin: false)
segolene = User.create!(name:"Segolene", age:"36", email: "segolene@greenpeace.com", password: "wasteless", admin: false)
nicolas = User.create!(name:"Nicolas", age:"32", email: "nicolas@parcdesprinces.fr", password: "Parisenfinaledimanche", admin: false)

ariane = Spaceship.create!(name: "Ariane 5", year_of_creation: 1970, country: "French Guiana", price: "100000", description: "A unique experience leaded by the CNES. Departure from the Kourou base in French Guiana.", destination: "Mars", user_id: victor.id)
apollo = Spaceship.create!(name: "ApolloXX", year_of_creation: 1960, country: "United-States", price: "10000000", description: "Ready for a trip to the Moon? Departure from Cape Canaveral in Florida under the monitoring of the NASA.", destination: "Moon", user_id: segolene.id)
space_x = Spaceship.create!(name: "StarShip", year_of_creation: 2015, country:"United-States", price: "100000000", description: "A one-way trip for Mars?! Enjoy your launch at the SpaceX base in Florida with Elon Musk.", destination: "Space", user_id: walid.id)
soyouz = Spaceship.create!(name: "Soyouz", year_of_creation: 1958, country: "Kazakhstan", price: "10000", description: "Departure from Baibounour in Kazakhstan. Come play a party of AperoBlindTest in space!", destination: "Pluto", user_id: nicolas.id)
millenium = Spaceship.create!(name: "Millenium", year_of_creation: 1977, country: "Tatooine", price: "1500000", description: "Meet the legendary crew from the Millenium and reach Mars in the fastest way possible! Departure from Hollywood.", destination: "Mars", user_id: nicolas.id)
spoutnik = Spaceship.create!(name: "Spoutnik", year_of_creation: 1957, country: "Russia", price: "10000", description: "Ride in one of the great wonder of our world and discover the martian environnement. Departure from Moscou", destination: "Mars", user_id: nicolas.id)

#booking1 = Booking.create!(user_id: victor.id, spaceship_id: ariane.id, departure_date: "01/03/2020", arrival_date: "10/03/2020", total_price: "100000000$")
#booking2 = Booking.create!(user_id: walid.id, spaceship_id: apollo.id, departure_date: "01/03/2020", arrival_date: "10/03/2020", total_price: "100000000$")
#booking3 = Booking.create!(user_id: segolene.id, spaceship_id: space_x.id, departure_date: "01/03/2020", arrival_date: "10/03/2020", total_price: "100000000$")
#booking4 = Booking.create!(user_id: nicolas.id, spaceship_id: soyouz.id, departure_date: "01/03/2020", arrival_date: "10/03/2020", total_price: "100000000$")



file = URI.open("https://i.pinimg.com/originals/84/11/96/841196065b7e30672e76a9de7ce71f82.jpg")
apollo.photo.attach(io: file, filename: 'apollo.jpg', content_type: 'image/jpg')

file2 =  URI.open("https://spacenews.com/wp-content/uploads/2014/11/Ariane5ME_Arianespace4X3.jpg")
ariane.photo.attach(io: file2, filename: 'ariane.jpg', content_type: 'image/jpg')

file3 =  URI.open("https://www.universetoday.com/wp-content/uploads/2019/08/Starship-Super-Heavy-steel-render-2019-SpaceX-2X-1-crop-2000x938.jpg")
space_x.photo.attach(io: file3, filename: 'space_x.jpg', content_type: 'image/jpg')

file4 =  URI.open("https://www.nasaspaceflight.com/wp-content/uploads/2017/09/Z3GGG.jpg")
soyouz.photo.attach(io: file4, filename: 'soyouz.jpg', content_type: 'image/jpg')

file5 =  URI.open("https://www.nme.com/wp-content/uploads/2016/11/star_wars_millenium_falcon_movie.jpg")
millenium.photo.attach(io: file5, filename: 'millenium.jpg', content_type: 'image/jpg')

file6 =  URI.open("https://ovnis-doit-on-y-croire.e-monsite.com/medias/images/698c8e8591cae93eb7b55fcd69951d-h498-w598-m2.jpg")
spoutnik.photo.attach(io: file6, filename: 'spoutnik.jpg', content_type: 'image/jpg')

# https://www.nme.com/wp-content/uploads/2016/11/star_wars_millenium_falcon_movie.jpg
# https://medias.pourlascience.fr/api/v1/images/view/5a82a4038fe56f4a4f5e2ee3/wide_1300/image.jpg

