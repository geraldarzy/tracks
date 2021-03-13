class StationsController < ApplicationController
    #before_action :authenticate_user!
    def index
        stations = Station.search_by_name(params[:search])
        if stations.present?
            @stations = stations
        else
            @stations = Station.all
        end
    end

    def show
        @station = Station.find_by(id: params[:id])
    end
end