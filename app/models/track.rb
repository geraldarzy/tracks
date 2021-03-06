class Track<ActiveRecord::Base
    has_many :track_stations
    has_many :stations, through: :track_stations
end