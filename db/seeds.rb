# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

#r = Track.create(name:"R Track")
#m = Track.create(name:"M Track")

#grand = Station.create(name:"Grand Avenue Station", address: "Queens Blvd. Elmhurst, Queens 11373")
#woodhaven = Station.create(name:"Woodhaven Station", address: "Woodhaven Blvd. Elmhurst, Queens 11373")

#TrackStation.create(station_id: 1, track_id: 1)
#TrackStation.create(station_id: 2, track_id: 2)
#TrackStation.create(station_id: 1, track_id: 2)

#arzy = User.create(username:"Arzy", first_name:"Gerald", last_name:"Arzola", email:"arzy@arzola.com",password:"password")
#popoy = User.create(username:"Popoy", first_name:"Popoy", last_name:"Arzola", email:"popoy@arzola.com",password:"password")
#bob = User.create(username:"bobby", first_name:"bobby", last_name:"fischer", email:"fischer@chess.com",password:"password")

#arzyspost = Post.create(title:"Guess who I saw at Grand Ave!!!!",description: "saw a famous person playing the trumpet!", content: "Craziest thing happened! I was walking down the stairs when I heard someone playing the trumpet. It sounded amazing, I can't even describe it properly. I go down to investigate and turns out it was BILLY JOEL!", station_id: 1, user_id:1)
#popoyspost = Post.create(title:"I saw dogs at Woodhaven today!",description: "saw the cutest dog on the train today!", content: "I was just minding my business on the R today. I was on my way to the city to go meet up with my friends. THEN I SAW HIM. When I tell you that he was the cutest dog ever, I MEAN IT. He was an aussie and he had the cutest tan spots all over his black and white hair. And yes I said hair! His coat of fur was so hair-like and I bet he must feel great when he cuddles with you. Ahh I wanna get myself an aussie friend so bad!", station_id: 2, user_id:2)


stations = CSV.parse(File.read("Stations.csv"), headers: true)
stations.each do |x|
    s = Station.create(name:x["Stop Name"])
    x["Daytime Routes"].split(" ").each do |track|
        s.tracks << Track.find_or_create_by(name: track)
    end
end
