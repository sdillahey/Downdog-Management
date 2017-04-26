class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      flash[:notice] = "Class added."
      redirect_to classes_path
    else
      render :new
    end
  end

end
