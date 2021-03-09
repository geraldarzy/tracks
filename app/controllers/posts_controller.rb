class PostsController < ApplicationController
    before_action :authenticate_user!

    def show
        station = Station.find_by(id:params[:station_id])
        if @post = station.posts.find_by(id:params[:id])

        else
            redirect_to (station_path(station))
        end
    end
end