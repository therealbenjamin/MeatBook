class EntriesController < ApplicationController

	def create
		@entry = Entry.create(params[:entry_params])
		if @entry.save
			render json: { success: true,
										 entry: @entry }
		else
			render json: { success: false,
										 message: "Could not save entry. Please try again." }
		end
	end

	def index
		@entries = Entry.all
		render json: @entries
	end

	private

	def entry_params
		params.require(:entry).permit(:avatar, :name, :note)
	end

end
