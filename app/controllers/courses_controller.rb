class CoursesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  include CoursesHelper

  # my courses
  def index
    allCategories
    @created_courses = createdCourses
    @enrolled_courses = enrolledCourses
  end

  # browse all available courses
  def browse_all
    allCategories
    @all_courses = Course.all
  end

  def show
    allCategories
    @course = Course.find(params[:id])
    @user = User.find(@course.user_id)
  end

  def create
    new_course = params.require(:course).permit(:title, :description, :category_id)
    course = Course.create(new_course)
    course.user_id = current_user.id
    course.save

    #redirect_to the sections index where you can create sections
    redirect_to course_sections_path(course)
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    updated_info = params.require(:course).permit(:title, :description)
    course = Course.find(params[:id])
    course.update_attributes(updated_info)
    redirect_to course_path
  end

  def delete
  end

end

