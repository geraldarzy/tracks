class StationsController < ApplicationController
    def index
        @stations = Station.all
    end

    def show
        @station = Station.find_by(id: params[:id])
    end
end