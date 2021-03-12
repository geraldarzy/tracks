class Track<ActiveRecord::Base
    has_many :track_stations
    has_many :stations, through: :track_stations

    before_save :add_track_to_name

    def add_track_to_name
        self.name = self.name + " Track"
    end
end