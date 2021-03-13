# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks
desc "add pictures to tracks"
task :add_pics_to_track do
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
    Track.all.each do |track|
        track.pic = track_logos[:"#{track.name.split[0]}"]
    end
end