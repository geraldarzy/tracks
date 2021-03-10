class PostsController < ApplicationController
    before_action :authenticate_user!

    def show
        station = Station.find_by(id:params[:station_id])
        if @post = station.posts.find_by(id:params[:id])

        else
            redirect_to (station_path(station))
        end
    end

    def new
        set_station
        @post = @station.posts.new(user_id:current_user.id)
    end

    def create
        set_station
        params[:post][:user_id] = current_user.id
        @post = @station.posts.create(post_params(:title,:description,:content,:station_id,:user_id))
        redirect_to "/stations/#{@station.id}"
    end

    private

    def set_station
        @station = Station.find_by(id: params[:station_id])
    end

    def post_params(*args)
        params.require(:post).permit(*args)
    end
end