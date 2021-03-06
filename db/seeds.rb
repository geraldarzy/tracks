# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r = Track.create(name:"R Track")
grand = Station.create(name:"Grand Ave. Station", address: "Queens Blvd. Elmhurst, Queens 11373")
woodhaven = Station.create(name:"Woodhaven Station", address: "Woodhaven Blvd. Elmhurst, Queens 11373")
TrackStation.create(station_id: 1, track_id: 1)
TrackStation.create(station_id: 2, track_id: 1)
arzy = User.create(username:"Arzy", first_name:"Gerald", last_name:"Arzola", email:"arzy@arzola.com")
arzyspost = Post.create(title:"Arzy's Post about Grand Ave", content: "Hello my name is arzy and this is about Grand ave.", station_id: 1, user_id:1)
