class Api::V1::CompetitionsController < ApplicationController

    def index
        competitions = Competition.all
        render json: CompetitionSerializer.new(competitions)
    end

    def create
        competition = Competition.new(competition_params)
        if competition.save
            render json: entry, status: :accepted
        else
            # render json: {errors: entry.full_messages}, status :unprocessible_entity
        end
     end

     private

     def competition_params
        params.require(:competition).permit(:comp_type, :description)
     end
end
