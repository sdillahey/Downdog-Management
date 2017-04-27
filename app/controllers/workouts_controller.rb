class WorkoutsController < ApplicationController
  before_action :admin_check, except: [:index, :show]

  def index
    @workouts = Workout.all.where("DATE(time - INTERVAL '7 hour') >= ?", Date.today).order("time ASC")
  end

  def show
    @workouts = Workout.where("DATE(time - INTERVAL '7 hour') = ?", Date.today)
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

  private

  def workout_params
    params.require(:workout).permit(:name, :instructor_id, :description, :time)
  end

end
