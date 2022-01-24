class Api::V1::EntriesController < ApplicationController
    before_action :set_entries, only: [:show, :destroy, :update]

    def index
        entries = Entry.all
        render json: EntrySerializer.new(entries)
    end

    def show
        render json: @entry
    end

    def new
        
    end

    def edit
    end

    def create
        # byebug
        entry = Entry.new(entry_params)
        if entry.save
            render json: EntrySerializer.new(entry), status: :accepted
        else
            render json: {errors: entry.errors.full_messages}, status: :unprocessable_entity
        end
     end

     def update
        # binding.pry
       @entry.update(entry_params)
    #    render json: @entry
        
        #   render json: @entry
        # else
        #     render json: {errors: entry.errors.full_messages}, status: :unprocessable_entity
        # end

      end

      

     def destroy
        # entry = Entry.find_by_id(params[:id])
        # if entry.destroy
        # render json: entry
        # else render json: { errors: ("could not be destroyed")}
        # end 
       @entry.destroy
     end

private

   def set_entries
    @entry = Entry.find_by_id(params[:id])
   end

    def entry_params
      params.require(:entry).permit(:name, :crew, :location, :competition_id)
    end

end
