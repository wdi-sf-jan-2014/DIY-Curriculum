class CoursesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  include CoursesHelper

  # my courses
  def index
    @categories = Category.all
    @created_courses = createdCourses
    @enrolled_courses = enrolledCourses
  end

  # browse all available courses
  def browse_all
    @categories = Category.all
    @all_courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def create
    new_course = params.require(:course).permit(:title, :description, :category_id)
    course = Course.create(new_course)
    course.user_id = current_user.id
    course.category_id = params[:course]["categories"].to_i
    
    course.save

    #redirect_to the sections index where you can create sections
    redirect_to course_sections_path(course)
  end

  def edit
  end

  def update
  end

  def delete
  end

end

