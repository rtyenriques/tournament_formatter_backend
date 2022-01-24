class Api::V1::CompetitionsController < ApplicationController

    def index
        competitions = Competition.all
        render json: CompetitionSerializer.new(competitions)
    end

    def create
        competition = Competition.new(competition_params)
        if competition.save
            render json: competition, status: :accepted
        else
            # render json: { errors: competition.full_messages}, status :unprocessable_entity
        end
     end

     private

     def competition_params
        params.require(:competition).permit(:comp_type, :description)
     end
end
