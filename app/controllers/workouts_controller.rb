class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:edit, :update, :destroy, :show]

  def index
    @workouts = Workout.all.order('created_at DESC')
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

  def edit
  end

  def update
    if @workout.update(workout_params)
      redirect_to @workout
    else
      render 'edit'
    end
  end

  def destroy
    if @workout.destroy
      redirect_to root_path
    else
      redirect_to @workout
    end 
  end

  private

  # permit the parms
  def workout_params
    params.require(:workout).permit(:date, :workout, :mood, :length)
  end

  # find the workout
  def set_workout
    @workout = Workout.find(params[:id])
  end

end
