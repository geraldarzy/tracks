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
        s.tracks << Track.find_or_create_by(name: track + " Track")
    end
end

#himym 
8.times do
    user = User.create(username:Faker::TvShows::HowIMetYourMother.character, password: Devise.friendly_token[0, 20], email:Faker::Internet.email)
    station = Track.find_by(name:"R Track").stations.sample
    title = Faker::Quote.famous_last_words
    description = Faker::TvShows::HowIMetYourMother.catch_phrase + "! Now lemme get a " + Faker::TvShows::HowIMetYourMother.high_five
    content = Faker::TvShows::HowIMetYourMother.quote 
    post = Post.create(user_id: user.id, station_id: station.id, title: title, description: description, content: content)
    10.times do 
        comment = post.comments.new(post_id: post.id, user_id: User.all.sample.id, content: Faker::TvShows::HowIMetYourMother.quote )
        comment.save
    end
end

#smash
smash_characters = []
20.times do
    user = User.create(username:Faker::Games::SuperSmashBros.fighter, password: Devise.friendly_token[0, 20], email:Faker::Internet.email )
    smash_characters << user
    station = Track.find_by(name:"R Track").stations.sample
    post_info ={
        station_id: station.id,
        user_id: user.id,
        title: Faker::Quotes::Shakespeare.king_richard_iii_quote,
        description: Faker::TvShows::FamilyGuy.quote,
        content: Faker::Quote.matz
    }
    post = Post.create(post_info)
     10.times do 
        comment = post.comments.new(post_id: post.id, user_id: User.all.sample.id, content: Faker::TvShows::HowIMetYourMother.quote )
        comment.save
    end
end

#got
10.times do
    user = User.create(username:Faker::TvShows::GameOfThrones.character, password: Devise.friendly_token[0, 20], email:Faker::Internet.email)
    station = Track.find_by(name:"R Track").stations.sample
    post_info ={
        station_id: station.id,
        user_id: user.id,
        title: Faker::TvShows::FamilyGuy.quote,
        description: Faker::TvShows::GameOfThrones.dragon + " is in " + Faker::TvShows::GameOfThrones.city + " with " + Faker::TvShows::GameOfThrones.house ,
        content: Faker::TvShows::GameOfThrones.quote 
    }
    post = Post.create(post_info)
     10.times do 
        comment = post.comments.new(post_id: post.id, user_id: User.all.sample.id, content: Faker::TvShows::HowIMetYourMother.quote )
        comment.save
    end
end

#naruto
naruto_characters = []
10.times do
    user = User.create(username:Faker::JapaneseMedia::Naruto.character, password: Devise.friendly_token[0, 20], email:Faker::Internet.email)
    naruto_characters << user
    station = Track.find_by(name:"R Track").stations.sample
    post_info ={
        station_id: station.id,
        user_id: user.id,
        title: Faker::Movies::HarryPotter.quote,
        description: "The " + Faker::JapaneseMedia::Naruto.demon + " is looking for someone with " + Faker::JapaneseMedia::Naruto.eye + " in " + Faker::JapaneseMedia::Naruto.village ,
        content: Faker::Quote.matz
    }
    post = Post.create(post_info)
     10.times do 
        comment = post.comments.new(post_id: post.id, user_id: User.all.sample.id, content: Faker::TvShows::HowIMetYourMother.quote )
        comment.save
    end
end

#266 - Grand Ave
10.times do
    user = smash_characters.sample
    station = Station.find_by(id: 266)
    post_info ={
        station_id: station.id,
        user_id: user.id,
        title: Faker::Movies::StarWars.quote,
        description: Faker::TvShows::Simpsons.quote,
        content: Faker::Quote.matz
    }
    post = Post.create(post_info)
    10.times do 
        c = post.comments.new(post_id: post.id, user_id: naruto_characters.sample.id, content: Faker::TvShows::HowIMetYourMother.quote )
        c.save

        c1 = post.comments.new(post_id: post.id, user_id: User.all.sample.id, content: Faker::TvShows::HowIMetYourMother.quote )
        c1.save

        c2 = post.comments.new(post_id: post.id, user_id: naruto_characters.sample.id, content: Faker::Movies::StarWars.wookiee_sentence )
        c2.save
    end
end
Post.create(title:"I saw the cutest dogs at Grand ave today!",description: "the good doggo was so cute and so polite!", content: "I was just minding my business on the R today. I was on my way to the city to go meet up with my friends. THEN I SAW HIM. When I tell you that he was the cutest dog ever, I MEAN IT. He was an aussie and he had the cutest tan spots all over his black and white hair. And yes I said hair! His coat of fur was so hair-like and I bet he must feel great when he cuddles with you. Ahh I wanna get myself an aussie friend so bad!", station_id: 266, user_id:naruto_characters.sample.id)
Post.create(title:"I dropped my house keys this morning!",description: "set of keys with a strawberry keychain! call me at 646-029-1234", content: "Hey guys! Dropped my keys today at grand ave! I was on my way to work rushing early this morning. I got to work on time and it was an average day. Until I got home after work (10 whole hours later btw!!) and realized that I didn't have my keys! Im assuming I dropped them when I was running around the station earlier today trying to catch the R :( I went back to the station to look around but could not find it, the booth worker also didnt have it :( If you have it please give me a call! Thank you!!! ", station_id: 266, user_id:naruto_characters.sample.id)
Post.create(title:"Guess who I saw at Grand Ave!!!!",description: "saw a famous person playing the trumpet!", content: "Craziest thing happened! I was walking down the stairs when I heard someone playing the trumpet. It sounded amazing, I can't even describe it properly. I go down to investigate and turns out it was BILLY JOEL!", station_id: 266, user_id:smash_characters.sample.id)
Post.create(title:"I saw the cutest PUG",description: "the good puggo was so cute and so polite!! his name is Popoy and he gave me a fist bump!", content: "I was just minding my business on the R today. I was on my way to the city to go meet up with my friends. THEN I SAW HIM. When I tell you that he was the cutest dog ever, I MEAN IT. He was an aussie and he had the cutest tan spots all over his black and white hair. And yes I said hair!! His coat of fur was so hair-like and I bet he must feel great when he cuddles with you. Ahh I wanna get myself an aussie friend so bad!", station_id: 266, user_id:naruto_characters.sample.id)
