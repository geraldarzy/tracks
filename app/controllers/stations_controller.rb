class StationsController < ApplicationController
    #before_action :authenticate_user!
    def index
        @stations = Station.all
    end

    def show
        @station = Station.find_by(id: params[:id])
    end
end