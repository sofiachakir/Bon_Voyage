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

Trip.create(title: "Voyage au pays du soleil levant",
            description: "Mon premier voyage au Japon. "
            country_name: "Japon",
            city_name: "Tokyo",
            start_date: "20200801",
            end_date: "20200815",
            user_id: 1)

Event.create(city_name: "Haneda Airport",
            name_event: "Arrivée à l'aéroport Haneda",
            start_time: "20200801123000",
            comment: "Voyage avec la compagnie AirFrance qui c'est bien passé. Indications claires dans l'aéroport. Je conseille vivement d'y atterrir.",
            trip_id: 1)

Note.create(title: "Trouver Keikyu Tourist Information Center",
            text: "Welcome! Tokyo Subway 72h Ticket + Keikyu Line One-Way",
            event_id: 1)

Note.create(text: "Trouver Borne Free Wifi",
            event_id: 1)

Event.create(city_name: "Asakusa",
            name_event: "Visite de la ville d'Asakusa",
            start_time: "20200802090000",
            end_time: "20200802123000",
            trip_id: 1)

Note.create(title: "Porte de Kaminarimon",
            text: "ouvert - gratuit",
            event_id: 2)

Note.create(title: "Temple Sensoji",
            text: "ouvert de 6h à 17h - gratuit",
            image_url: "https://d2ahiw9kb7is19.cloudfront.net/-/media/B3002A62D64F4EC6875E7B7AA344B7B6.jpg?d=20171117T100912&w=750",
            event_id: 2)

Note.create(title: "Rue Kappabashi",
            text: "Restaurants - Boutiques",
            event_id: 2)

Note.create(text: "Prendre le métro pour aller à Ueno",
            event_id: 2)

Event.create(city_name: "Ueno",
            name_event: "Visite de la ville de Ueno",
            start_time: "20200802130000",
            end_time: "20200802200000",
            trip_id: 1)

Note.create(image_url: "https://zupimages.net/up/20/24/8z4z.png",
            event_id: 3)

Note.create(title: "Parc Ueno",
            text: "ouvert - gratuit",
            event_id: 3)

Note.create(title: "Temple Tennoji",
            text: "ouvert - gratuit",
            event_id: 3)

Note.create(title: "Rue Ameya Yokochô",
            text: "10h à 20h - Marchés",
            event_id: 3)

Note.create(title: "Rue Yanaka Ginza",
            text: "Restaurants - Boutiques",
            event_id: 3)

# ------------------

Event.create(city_name: "Haneda Airport",
            name_event: "Arrivée à l'aéroport Haneda",
            start_time: "20200803123000",
            comment: "Voyage avec la compagnie AirFrance qui c'est bien passé. Indications claires dans l'aéroport. Je conseille vivement d'y atterrir.",
            trip_id: 1)

Note.create(title: "Trouver Keikyu Tourist Information Center",
            text: "Welcome! Tokyo Subway 72h Ticket + Keikyu Line One-Way",
            event_id: 4)

Note.create(text: "Trouver Borne Free Wifi",
            event_id: 4)

Event.create(city_name: "Asakusa",
            name_event: "Visite de la ville d'Asakusa",
            start_time: "20200804090000",
            end_time: "20200804123000",
            trip_id: 1)

Note.create(title: "Porte de Kaminarimon",
            text: "ouvert - gratuit",
            event_id: 5)

Note.create(title: "Temple Sensoji",
            text: "ouvert de 6h à 17h - gratuit",
            image_url: "https://d2ahiw9kb7is19.cloudfront.net/-/media/B3002A62D64F4EC6875E7B7AA344B7B6.jpg?d=20171117T100912&w=750",
            event_id: 5)

Note.create(title: "Rue Kappabashi",
            text: "Restaurants - Boutiques",
            event_id: 5)

Note.create(text: "Prendre le métro pour aller à Ueno",
            event_id: 5)

Event.create(city_name: "Ueno",
            name_event: "Visite de la ville de Ueno",
            start_time: "20200804130000",
            end_time: "20200804200000",
            trip_id: 1)

Note.create(image_url: "https://zupimages.net/up/20/24/8z4z.png",
            event_id: 6)

Note.create(title: "Parc Ueno",
            text: "ouvert - gratuit",
            event_id: 6)

Note.create(title: "Temple Tennoji",
            text: "ouvert - gratuit",
            event_id: 6)

Note.create(title: "Rue Ameya Yokochô",
            text: "10h à 20h - Marchés",
            event_id: 6)

Note.create(title: "Rue Yanaka Ginza",
            text: "Restaurants - Boutiques",
            event_id: 6)
#--------------------

Event.create(city_name: "Haneda Airport",
            name_event: "Arrivée à l'aéroport Haneda",
            start_time: "20200805123000",
            comment: "Voyage avec la compagnie AirFrance qui c'est bien passé. Indications claires dans l'aéroport. Je conseille vivement d'y atterrir.",
            trip_id: 1)

Note.create(title: "Trouver Keikyu Tourist Information Center",
            text: "Welcome! Tokyo Subway 72h Ticket + Keikyu Line One-Way",
            event_id: 7)

Note.create(text: "Trouver Borne Free Wifi",
            event_id: 7)

Event.create(city_name: "Asakusa",
            name_event: "Visite de la ville d'Asakusa",
            start_time: "20200806090000",
            end_time: "20200806123000",
            trip_id: 1)

Note.create(title: "Porte de Kaminarimon",
            text: "ouvert - gratuit",
            event_id: 8)

Note.create(title: "Temple Sensoji",
            text: "ouvert de 6h à 17h - gratuit",
            image_url: "https://d2ahiw9kb7is19.cloudfront.net/-/media/B3002A62D64F4EC6875E7B7AA344B7B6.jpg?d=20171117T100912&w=750",
            event_id: 8)

Note.create(title: "Rue Kappabashi",
            text: "Restaurants - Boutiques",
            event_id: 8)

Note.create(text: "Prendre le métro pour aller à Ueno",
            event_id: 8)

Event.create(city_name: "Ueno",
            name_event: "Visite de la ville de Ueno",
            start_time: "20200806130000",
            end_time: "20200806200000",
            trip_id: 1)

Note.create(image_url: "https://zupimages.net/up/20/24/8z4z.png",
            event_id: 9)

Note.create(title: "Parc Ueno",
            text: "ouvert - gratuit",
            event_id: 9)

Note.create(title: "Temple Tennoji",
            text: "ouvert - gratuit",
            event_id: 9)

Note.create(title: "Rue Ameya Yokochô",
            text: "10h à 20h - Marchés",
            event_id: 9)

Note.create(title: "Rue Yanaka Ginza",
            text: "Restaurants - Boutiques",
            event_id: 9)
#-----------------
Event.create(city_name: "Haneda Airport",
            name_event: "Arrivée à l'aéroport Haneda",
            start_time: "20200807123000",
            comment: "Voyage avec la compagnie AirFrance qui c'est bien passé. Indications claires dans l'aéroport. Je conseille vivement d'y atterrir.",
            trip_id: 1)

Note.create(title: "Trouver Keikyu Tourist Information Center",
            text: "Welcome! Tokyo Subway 72h Ticket + Keikyu Line One-Way",
            event_id: 10)

Note.create(text: "Trouver Borne Free Wifi",
            event_id: 10)

Event.create(city_name: "Asakusa",
            name_event: "Visite de la ville d'Asakusa",
            start_time: "20200808090000",
            end_time: "20200808123000",
            trip_id: 1)

Note.create(title: "Porte de Kaminarimon",
            text: "ouvert - gratuit",
            event_id: 11)

Note.create(title: "Temple Sensoji",
            text: "ouvert de 6h à 17h - gratuit",
            image_url: "https://d2ahiw9kb7is19.cloudfront.net/-/media/B3002A62D64F4EC6875E7B7AA344B7B6.jpg?d=20171117T100912&w=750",
            event_id: 11)

Note.create(title: "Rue Kappabashi",
            text: "Restaurants - Boutiques",
            event_id: 11)

Note.create(text: "Prendre le métro pour aller à Ueno",
            event_id: 11)

Event.create(city_name: "Ueno",
            name_event: "Visite de la ville de Ueno",
            start_time: "20200808130000",
            end_time: "20200808200000",
            trip_id: 1)

Note.create(image_url: "https://zupimages.net/up/20/24/8z4z.png",
            event_id: 12)

Note.create(title: "Parc Ueno",
            text: "ouvert - gratuit",
            event_id: 12)

Note.create(title: "Temple Tennoji",
            text: "ouvert - gratuit",
            event_id: 12)

Note.create(title: "Rue Ameya Yokochô",
            text: "10h à 20h - Marchés",
            event_id: 12)

Note.create(title: "Rue Yanaka Ginza",
            text: "Restaurants - Boutiques",
            event_id: 12)

#----------------------
Event.create(city_name: "Haneda Airport",
            name_event: "Arrivée à l'aéroport Haneda",
            start_time: "20200809123000",
            comment: "Voyage avec la compagnie AirFrance qui c'est bien passé. Indications claires dans l'aéroport. Je conseille vivement d'y atterrir.",
            trip_id: 1)

Note.create(title: "Trouver Keikyu Tourist Information Center",
            text: "Welcome! Tokyo Subway 72h Ticket + Keikyu Line One-Way",
            event_id: 13)

Note.create(text: "Trouver Borne Free Wifi",
            event_id: 13)

Event.create(city_name: "Asakusa",
            name_event: "Visite de la ville d'Asakusa",
            start_time: "20200810090000",
            end_time: "20200810123000",
            trip_id: 1)

Note.create(title: "Porte de Kaminarimon",
            text: "ouvert - gratuit",
            event_id: 14)

Note.create(title: "Temple Sensoji",
            text: "ouvert de 6h à 17h - gratuit",
            image_url: "https://d2ahiw9kb7is19.cloudfront.net/-/media/B3002A62D64F4EC6875E7B7AA344B7B6.jpg?d=20171117T100912&w=750",
            event_id: 14)

Note.create(title: "Rue Kappabashi",
            text: "Restaurants - Boutiques",
            event_id: 14)

Note.create(text: "Prendre le métro pour aller à Ueno",
            event_id: 14)

Event.create(city_name: "Ueno",
            name_event: "Visite de la ville de Ueno",
            start_time: "20200810130000",
            end_time: "20200810200000",
            trip_id: 1)

Note.create(image_url: "https://zupimages.net/up/20/24/8z4z.png",
            event_id: 15)

Note.create(title: "Parc Ueno",
            text: "ouvert - gratuit",
            event_id: 15)

Note.create(title: "Temple Tennoji",
            text: "ouvert - gratuit",
            event_id: 15)

Note.create(title: "Rue Ameya Yokochô",
            text: "10h à 20h - Marchés",
            event_id: 15)

Note.create(title: "Rue Yanaka Ginza",
            text: "Restaurants - Boutiques",
            event_id: 15)

#-----------------------
Event.create(city_name: "Haneda Airport",
            name_event: "Arrivée à l'aéroport Haneda",
            start_time: "20200811123000",
            comment: "Voyage avec la compagnie AirFrance qui c'est bien passé. Indications claires dans l'aéroport. Je conseille vivement d'y atterrir.",
            trip_id: 1)

Note.create(title: "Trouver Keikyu Tourist Information Center",
            text: "Welcome! Tokyo Subway 72h Ticket + Keikyu Line One-Way",
            event_id: 16)

Note.create(text: "Trouver Borne Free Wifi",
            event_id: 16)

Event.create(city_name: "Asakusa",
            name_event: "Visite de la ville d'Asakusa",
            start_time: "20200812090000",
            end_time: "20200812123000",
            trip_id: 1)

Note.create(title: "Porte de Kaminarimon",
            text: "ouvert - gratuit",
            event_id: 17)

Note.create(title: "Temple Sensoji",
            text: "ouvert de 6h à 17h - gratuit",
            image_url: "https://d2ahiw9kb7is19.cloudfront.net/-/media/B3002A62D64F4EC6875E7B7AA344B7B6.jpg?d=20171117T100912&w=750",
            event_id: 17)

Note.create(title: "Rue Kappabashi",
            text: "Restaurants - Boutiques",
            event_id: 17)

Note.create(text: "Prendre le métro pour aller à Ueno",
            event_id: 17)

Event.create(city_name: "Ueno",
            name_event: "Visite de la ville de Ueno",
            start_time: "20200812130000",
            end_time: "20200812200000",
            trip_id: 1)

Note.create(image_url: "https://zupimages.net/up/20/24/8z4z.png",
            event_id: 18)

Note.create(title: "Parc Ueno",
            text: "ouvert - gratuit",
            event_id: 18)

Note.create(title: "Temple Tennoji",
            text: "ouvert - gratuit",
            event_id: 18)

Note.create(title: "Rue Ameya Yokochô",
            text: "10h à 20h - Marchés",
            event_id: 18)

Note.create(title: "Rue Yanaka Ginza",
            text: "Restaurants - Boutiques",
            event_id: 18)

#-----------------
Event.create(city_name: "Haneda Airport",
            name_event: "Arrivée à l'aéroport Haneda",
            start_time: "20200813123000",
            comment: "Voyage avec la compagnie AirFrance qui c'est bien passé. Indications claires dans l'aéroport. Je conseille vivement d'y atterrir.",
            trip_id: 1)

Note.create(title: "Trouver Keikyu Tourist Information Center",
            text: "Welcome! Tokyo Subway 72h Ticket + Keikyu Line One-Way",
            event_id: 19)

Note.create(text: "Trouver Borne Free Wifi",
            event_id: 19)

Event.create(city_name: "Asakusa",
            name_event: "Visite de la ville d'Asakusa",
            start_time: "20200814090000",
            end_time: "20200814123000",
            trip_id: 1)

Note.create(title: "Porte de Kaminarimon",
            text: "ouvert - gratuit",
            event_id: 20)

Note.create(title: "Temple Sensoji",
            text: "ouvert de 6h à 17h - gratuit",
            image_url: "https://d2ahiw9kb7is19.cloudfront.net/-/media/B3002A62D64F4EC6875E7B7AA344B7B6.jpg?d=20171117T100912&w=750",
            event_id: 20)

Note.create(title: "Rue Kappabashi",
            text: "Restaurants - Boutiques",
            event_id: 20)

Note.create(text: "Prendre le métro pour aller à Ueno",
            event_id: 20)

Event.create(city_name: "Ueno",
            name_event: "Visite de la ville de Ueno",
            start_time: "20200814130000",
            end_time: "20200814200000",
            trip_id: 1)

Note.create(image_url: "https://zupimages.net/up/20/24/8z4z.png",
            event_id: 21)

Note.create(title: "Parc Ueno",
            text: "ouvert - gratuit",
            event_id: 21)

Note.create(title: "Temple Tennoji",
            text: "ouvert - gratuit",
            event_id: 21)

Note.create(title: "Rue Ameya Yokochô",
            text: "10h à 20h - Marchés",
            event_id: 21)

Note.create(title: "Rue Yanaka Ginza",
            text: "Restaurants - Boutiques",
            event_id: 21)

#--------------
Event.create(city_name: "Haneda Airport",
            name_event: "Départ",
            start_time: "20200815123000",
            comment: "Voyage avec la compagnie AirFrance qui c'est bien passé. Indications claires dans l'aéroport. Je conseille vivement d'y atterrir.",
            trip_id: 1)

Note.create(title: "Retour à la maison",
            event_id: 22)
puts "Done!"