# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
victor = User.create!(name:"Victor", age:"26", email: "victor@gmail.com", password: "123456", admin: true)
walid = User.create!(name:"Walid", age:"30", email: "walid@zoom.com", password: "micro-ouvert-a-vie", admin: false)
segolene = User.create!(name:"Segolene", age:"36", email: "segolene@greenpeace.com", password: "wasteless", admin: false)
nicolas = User.create!(name:"Nicolas", age:"32", email: "nicolas@parcdesprinces.fr", password: "Parisenfinaledimanche", admin: false)

ariane = Spaceship.create!(name: "Ariane 5", year_of_creation: 1970, country: "Guyane Française", price: "100000$", description: "Une expérience unique dirigée par le CNES. Départ de la base de Kourou en Guyane Française", user_id: victor.id)
apollo = Spaceship.create!(name: "ApolloXX", year_of_creation: 1960, country: "Etats-Unis", price: "10000000$", description: "Prêt au départ pour la Lune ? Départ de Cap Canaveral en Floride, sous la supervision de la NASA", user_id: segolene.id)
space_x = Spaceship.create!(name: "StarShip", year_of_creation: 2015, country:"Etats-Unis", price: "100000000$", description: "Un aller simple pour Mars ?! Venez vous lancer sur la base de Space X en Floride avec Elon Musk", user_id: walid.id)
soyouz = Spaceship.create!(name: "Soyouz", year_of_creation: 1958, country: "Russie", price: "1000$", description: "Départ à Baibounour au Kazakhstan. Venez faire votre ApéroBlindTest dans l'espace", user_id: nicolas.id)

