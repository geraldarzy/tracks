class Post < ActiveRecord::Base
    belongs_to :station
    belongs_to :user
    has_many :comments

    validates :title, presence:true
    validates :description, presence:true
    validates :content, presence:true

    def relative_time
        if self.created_at.between?(Time.zone.now.beginning_of_day, Time.zone.now.end_of_day)
            "Posted today at #{self.created_at.strftime("%I:%M %p")}"
        else
            "Posted on #{self.created_at.strftime("%B %d, %Y at %I:%M %p")}"
        end
    end
end