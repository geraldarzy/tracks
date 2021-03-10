class TracksController < ApplicationController
    def index
    end
    def show
        @track = Track.find_by(id:params[:id])
    end
end