class User < ActiveRecord::Base
    #show posts a user made
    has_many :posts
    #show comments a user made/show who owner of comment is
    has_many :comments
    #show stations a user has commented on
    has_many :stations, through: :posts

end