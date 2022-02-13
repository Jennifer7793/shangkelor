class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  
  def new
    @course = Course.new(course_params)
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  def course_params
    params.permit(:title, :price, :currency, :category, :shelf, :description, :validate)
  end
end
