# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#en base on detruit tous clients
#Client.destroy_all
#User.destroy_all

julien = User.create!(email: "julient75@yahoo.fr", password: "testtest")
julienbis = User.create!(email: "julien.teillarddeyry@gmail.com", password: "testtest")

bezos = Client.create!(user: julien,name: "Jeff Bezos", url:"Will be CEO",tagline:"CEO of Amazon",category: "CEO")
Client.create!(user: julien,name: "Larry Page", url:"Will be CEO",tagline:"CEO of Alphabet",category: "CEO")
Client.create!(user: julien,name: "Warren Buffet", url:"Will be CEO",tagline:"CEO of Berkshire Hathaway",category: "CEO")
Client.create!(user: julienbis,name: "Jean Dan CFO", url:"Will be CFO",tagline:"CFO of Alpha",category: "CFO")
Client.create!(user: julienbis,name: "Marketing dude", url:"Will be CMO",tagline:"CMO of Zara",category: "CMO")

#on rajoute le ! pour avoir message derreur si pb de validation

#Upvotes

#bezos.create!(user: julien, client: "Julien Teillard d'Eyry")
