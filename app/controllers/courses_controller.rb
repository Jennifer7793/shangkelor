class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  
  def new
    @course = Course.new
  end
  
  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path, notice: "課程新增成功"
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
  def course_params
    params.require(:course).permit(:title, :price, :currency, :category, :shelf, :description, :validate)
  end
end
