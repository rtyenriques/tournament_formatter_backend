class Api::V1::EntriesController < ApplicationController

    def index
        entries = Entry.all
        render json: EntrySerializer.new(entries)
    end

    def create
        entry = Entry.new(entry_params)
        if entry.save
            render json: entry, status: :accepted
        else
            # render json: {errors: entry.full_messages}, status :unprocessible_entity
        end
     end

    private

    def entry_params
      params.require(:entry).permit(:name, :location, :crew)
    end

end
