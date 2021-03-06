class Station < ActiveRecord::Base
    has_many :track_stations
    has_many :tracks, through: :track_stations
    has_many :posts
end