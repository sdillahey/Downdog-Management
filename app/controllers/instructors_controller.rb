class InstructorsController < ApplicationController

  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      flash[:notice] = "Successfully added!"
      redirect_to instructors_path
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
