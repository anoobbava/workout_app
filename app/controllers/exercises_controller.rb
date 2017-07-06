class ExercisesController < ApplicationController

  def create
    workout = Workout.find(params[:workout_id])
    if workout.exercises.create(exercise_params)
      redirect_to workout
    else
      render :show
    end

  end

  def new
    @exercise = Exercise.new
  end


  private

  def exercise_params
    params.require(:exercise).permit(:name, :sets, :reps, :workout_id)
  end
end
