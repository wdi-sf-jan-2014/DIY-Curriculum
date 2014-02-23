class CoursesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  include CoursesHelper

  def index
    @categories = Category.all
    @all_courses = Course.all
    @created_courses = createdCourses
  end

  def show
    @course = Course.find(params[:id])
  end

  def create
    new_course = params.require(:course).permit(:title, :description, :category_id)
    course = Course.create(new_course)
    course.user_id = current_user.id
    course.save

    #redirect_to the sections index where you can create sections
    # redirect_to sections_path

    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def delete
  end

end

