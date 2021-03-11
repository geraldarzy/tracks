class CommentsController < ApplicationController
    def new
        @comment = Post.find_by(id:params[:post_id]).comments.new
    end

  
    
end