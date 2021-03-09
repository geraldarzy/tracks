class Station < ActiveRecord::Base
    has_many :track_stations
    has_many :tracks, through: :track_stations
    has_many :posts
    has_many :users, through: :posts

    def posts_made_within_24hrs
        self.posts.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
    end

    def users_here_within_24hrs
        self.posts_made_within_24hrs.map {|p|p.user}.uniq
    end

    def ghosttown?

    end

end