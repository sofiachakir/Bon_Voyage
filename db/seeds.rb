# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "let's seed..."

puts "Destroy all previous Items"

Note.destroy_all
Event.destroy_all
Trip.destroy_all
User.destroy_all

# Remettre les compteurs à 0
ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

puts "Create Admin account"

User.create(user_name: "team bon voyage",
            email: "bon.voyage@yopmail.com",
            password: "motdepasse")

Trip.create(title: "Weekend en amoureux",
            description: "Petite expédition dans la belle ville de Venise.",
            country_name: "Italie",
            city_name: "Venise",
            start_date: "20200418",
            end_date: "20200419",
            user_id: 1)

Event.create(city_name: "Venise",
            name_event: "Visite des canaux de la ville",
            start_time: "20200418093000",
            end_time: "20200418113000",
            trip_id: 1)

Note.create(text: "Promenade en gondole",
            event_id: 1)

Note.create(image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSsITIbjo882Nkitq7_OIO4ZASbaSjumzKZ1tm2A93eqczlO2wF&usqp=CAU",
            event_id: 1)


Event.create(city_name: "Venise",
            name_event: "Pause déjeuner",
            start_time: "20200418120000",
            end_time: "20200418140000",
            trip_id: 1)

Note.create(title: "Restaurant Al Paradisio",
            event_id: 2)

Note.create(text: "Giardini della Biennale, Castello 1260, 30122 Venezia",
            event_id: 2)

Note.create(image_url: "https://www.mandaley.fr/wp-content//ou-manger-a-venise-paradiso.jpg",
            event_id: 2)

Event.create(city_name: "Venise",
            name_event: "Visite de la ville",
            start_time: "20200418143000",
            end_time: "20200418183000",
            trip_id: 1)

Note.create(title: "La Basilique Saint Marc",
            event_id: 3)

Note.create(image_url: "https://t2.gstatic.com/images?q=tbn:ANd9GcSOMN4W6IUox9AtonNyV1FFbZ5J0HA8X4ro9jMjjwY8hNfJ_lV8ISq8mC_bAkS4CcKMBRrOp2zvrXSklw",
            event_id: 3)

Note.create(title: "Palais des Doges",
            event_id: 3)

Note.create(image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRdRLG0LDarjways68f6bngHlCFwGyHhnqp0BBWKGG3Yjqonl_E&usqp=CAU",
            event_id: 3)

Event.create(city_name: "Venise",
            name_event: "Visite de la ville",
            start_time: "20200419093000",
            end_time: "20200419113000",
            trip_id: 1)

Note.create(text: "Basilique Santa Maria della Salute",
            event_id: 4)

Note.create(image_url: "https://t1.gstatic.com/images?q=tbn:ANd9GcQ3yLokJrbUJfBK1x7h0BmbNdYOsbDuXXvF65pGyGuoQkc4jYA7ib1CmQ4wgUCobkdwidulqPtUfbaBZQ",
            event_id: 4)

Note.create(text: "Punta della Dogana",
            event_id: 4)

Event.create(city_name: "Venise",
            name_event: "Pause déjeuner",
            start_time: "20200419120000",
            end_time: "20200419140000",
            trip_id: 1)

Note.create(title: "Restaurant 1000 Gourmet",
            event_id: 5)

Note.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-i/17/0e/c8/83/20190331-123523-largejpg.jpg",
            event_id: 5)

Event.create(city_name: "Venise",
            name_event: "Visite musée",
            start_time: "20200419143000",
            end_time: "20200419180000",
            trip_id: 1)

Note.create(title: "Museo Ebraico di Venezia",
            event_id: 6)

Note.create(text: "Campo di Ghetto Nuovo, 2902/b, 30121 Venezia VE, Italie",
            event_id: 6)

Note.create(title: "Jewish Ghetto",
            event_id: 6)

Note.create(text: "Site historique",
            event_id: 6)