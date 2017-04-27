class WorkoutsController < ApplicationController
  before_action :admin_check, except: [:index, :home]

  def index
    @workouts = Workout.all.where("DATE(time - INTERVAL '7 hour') >= ?", Date.today).order("time ASC")
  end

  def home
    @workouts = Workout.where("DATE(time - INTERVAL '7 hour') = ?", Date.today)
  end

  def show
    @workout = Workout.find(params[:id])
    @clients = @workout.clients
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      flash[:notice] = "Class added."
      redirect_to main_path
    else
      render :new
    end
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    if @workout.update_attributes(workout_params)
        redirect_to classes_path
    else
      render :edit
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to classes_path
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :instructor_id, :description, :time)
  end

end
