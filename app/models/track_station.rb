class TrackStation < ActiveRecord::Base
    belongs_to :track
    belongs_to :station
end