class Post < ActiveRecord::Base
    belongs_to :station
    belongs_to :user
    has_many :comments


end