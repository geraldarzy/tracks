class CommentsController < ApplicationController
    def new
        @comment = Post.find_by(id:params[:post_id]).comments.new
    end

    def create
        @comment = Post.find_by(id:params[:post_id]).comments.new(comment_params(:content))
        @comment.user_id = current_user.id
        if @comment.save
            redirect_to station_post_path(@comment.post.station,@comment.post)
        else
            render 'new'
        end
    end

    private
    
    def comment_params(*args)
        params.require(:comment).permit(*args)
    end
    
end