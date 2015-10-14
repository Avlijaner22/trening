class WorkoutsController < ApplicationController
	before_action :find_workout, only: [:show, :edit, :update, :destroy]
	def index
	end
	def new
		@workout = Workout.new
	end

	def show
	end
	def create
		@workout = Workout.new(workout_params)
		if @workout.save
			redirect_to @workout
		else
			render 'new'
		end
	end
	def update
	end
	def destroy
	end
	private

	def workout_params
		params.require(:workout).permit(:date, :workout, :mood, :lenght)
	end

	def find_workout
		@workout = Workout.find(params[:id])
	end

end
