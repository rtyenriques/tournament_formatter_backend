class Api::V1::CompetitionsController < ApplicationController

    def index
        competitions = Competition.all
        render json: CompetitionSerializer.new(competitions)
    end
end
