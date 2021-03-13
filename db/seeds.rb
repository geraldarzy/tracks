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

track_logos = {
    N:"https://camo.githubusercontent.com/4e468357d0b4b3f06fc6af38e08a5f6d4ef9b7d345d4290930bc86637054d812/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f6e2e737667",
    W:"https://camo.githubusercontent.com/4785dcffca2f839955dafe20cb08a712f793ac3829b1ccc32daeb029a6cf89df/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f772e737667",
    R:"https://camo.githubusercontent.com/490b752881c10db0f437921d1c42d992012a50190aa3dbb98b212a1ef8542c2b/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f722e737667",
    Q:"https://camo.githubusercontent.com/6b0e2754a5c8d07501c5530a2861a665db589a23eea7b998b591fdeeb06398bf/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f712e737667",
    B:"https://camo.githubusercontent.com/f672719e5e41f338de2118edeb7d48ae8ec0471834ab85e72f8e30e53c7943f0/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f622e737667",
    D:"https://camo.githubusercontent.com/699cb6edd1e2fe99ab002fbb22bc653dec47a7e4b60565a440acd089bdae0641/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f642e737667",
    F:"https://camo.githubusercontent.com/43f6ce41455c89339a413cddf736aa2f742e99f79b779efb1cdb3b73f5f7bc62/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f662e737667",
    J:"https://camo.githubusercontent.com/38395547f068ff536b68f4da10bd0596f160d8c71824668778f6bdbf23cd3e57/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f6a2e737667",
    Z:"https://camo.githubusercontent.com/80b2096f3d312c276ee99992d09ce43fa32b774fc96c2a04b0c6df39b6950e16/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f7a2e737667",
    M:"https://camo.githubusercontent.com/f420779902d01fa71d928f97033e0a2f987c60adf079e6069ec7373e89bee1b2/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f6d2e737667",
    L:"https://camo.githubusercontent.com/6db12c3493a7e72dd037424c6928ffc9e46f9bde0f3d4c65fe002efeba537ae9/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f6c2e737667",
    S:"https://camo.githubusercontent.com/782692446239e940a462fecc79cd7746fb54b9d292f58f73f5fadcbd2fb496c8/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f732e737667",
    A:"https://camo.githubusercontent.com/7fbe520f9feb38559d190a8f06f8ea0614bc7391b672383454ac900cdeaa80f9/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f612e737667",
    C:"https://camo.githubusercontent.com/a1551acb805d4a174668829631233733910f8984cd3f8360616f637abf53f179/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f632e737667",
    E:"https://camo.githubusercontent.com/d1d258654fe07514195fed5e18ba72d72cff610f32a26974e6f77d05eee15461/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f652e737667",
    G:"https://camo.githubusercontent.com/bd05c52287894ae6a7d795bf93c1fcfdc87190935a5122525b79589357d2b5d7/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f672e737667",
    "1":"https://camo.githubusercontent.com/e77dcf92355dad8c4ed6146137e964de5f3ef7c16655fbf8b3713ed7a7816eb2/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f312e737667",
    "2":"https://camo.githubusercontent.com/ee06b4ee45b4629ae45600262207c5a1d779f641933cd522305a55ab1baec8f2/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f322e737667",
    "3":"https://camo.githubusercontent.com/3259967b25f51b230ac66aed6d009df285bd0ad36750a1fb0a562528e848d145/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f332e737667",
    "4":"https://camo.githubusercontent.com/4bb51258a9809effce9b56eb4f2eeca36ef38434ad56355eb6d1968e29a755f1/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f342e737667",
    "5":"https://camo.githubusercontent.com/a249d26d12a27ac762812a5d1745cd6ada5df5480d475ab782963e9170e7ed22/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f352e737667",
    "6":"https://camo.githubusercontent.com/f3c539fa9a6acd848334686e6a8d852a8c2933db99dc5c84fea8aad2081e6e96/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f362e737667",
    "7":"https://camo.githubusercontent.com/20b04afd0a216be7ae448f9f0a5f47297bd224b2ab2e84ed95fa6077c7dfceb6/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f372e737667",
    SIR:"https://camo.githubusercontent.com/b7f1f0c6eeb4042f351381d30ac0f37d433b294f3ffe925c214430d6b44c43db/68747470733a2f2f756e706b672e636f6d2f6d74612d7375627761792d62756c6c65747340302e352e302f7376672f7369722e737667"
}
stations = CSV.parse(File.read("Stations.csv"), headers: true)
stations.each do |row|
    station = Station.create_or_find_by(name:row["Stop Name"])
    row["Daytime Routes"].split(" ").each do |track|
        station.tracks << t = Track.find_or_create_by(name: track + " Track")
        t.pic = track_logos[:"#{track}"]
        t.save
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
