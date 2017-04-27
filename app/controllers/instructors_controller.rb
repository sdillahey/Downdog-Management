class InstructorsController < ApplicationController
  before_action :admin_check, except: [:index, :show]


  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
    @workouts = @instructor.workouts.where("DATE(time - INTERVAL '7 hour') >= ?", Date.today).order("time ASC")
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      flash[:notice] = "Successfully added!"
      redirect_to main_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def instructor_params
    params.require(:instructor).permit(:name, :image, :bio)
  end
end
