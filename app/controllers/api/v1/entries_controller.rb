class Api::V1::EntriesController < ApplicationController

    def index
        entries = Entry.all
        render json: entries
    end

    def create
        entry = Entry.new(entry_params)


    end

    private

    def entry_params
      params.require(:entry).permit(:name, :location, :crew)
    end

end
