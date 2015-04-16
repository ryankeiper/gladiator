class GladiatorsController < ApplicationController

	def index
		@gladiators = Gladiator.all
	end

	def show
		@gladiator = Gladiator.find(params[:id])
	end

	def new
		@arena = Arena.first
		@gladiator = @arena.gladiators.new
	end

	def create
		@arena = Arena.first
		@gladiator = @arena.gladiators.new(gladiator_params)
		if @gladiator.save
			redirect_to @gladiator
		else
			render :new
		end
	end

	def edit
		@gladiator = Gladiator.find(params[:id])
	end

	def update
	end

	def destroy
	end

	private
	def gladiator_params
		params.require(:gladiator).permit(:name, :weapon)
	end

end