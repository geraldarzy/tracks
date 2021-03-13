class Station < ActiveRecord::Base
    include PgSearch::Model

    has_many :track_stations
    has_many :tracks, through: :track_stations
    has_many :posts
    has_many :users, through: :posts

    validates :name, uniqueness: true

    pg_search_scope :search_by_name, against: :name,
    using: {
        tsearch: {
          prefix: true
        }
      }

    def posts_made_within_24hrs
        self.posts.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
    end

    def users_here_within_24hrs
        self.posts_made_within_24hrs.map {|p|p.user}.uniq
    end

     def users_here_within_1hr
        self.posts_made_within_1hr.map {|p|p.user}.uniq
    end

    def posts_made_within_1hr
        self.posts.where(created_at: Time.now - 1*60*60..Time.now)
    end

    def ghosttown?
        self.users_here_within_24hrs.empty?
    end

    def self.random_name
        self.all.sample.name
    end

end