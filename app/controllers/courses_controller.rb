class CoursesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  include CoursesHelper

  # my courses
  def index
    allCategories
    createdCourses
    enrolledCourses
    respond_to do |f|
      f.html
      f.json { render :json => @created_courses }
    end
  end

  # browse all available courses
  def browse_all
    allCategories
    @all_courses = Course.all
  end

  def show
    allCategories
    @course = Course.find(params[:id])
    @user = User.find(@course.author_id)

    if current_user.courses.where(:id => @course.id) == []
      @enrolled = false
    else
      @enrolled = true
    end


  end

  def create
    new_course = params.require(:course).permit(:title, :description, :category_id)
    course = Course.create(new_course)
    current_user.courses << course
    course.author_id = current_user.id
    course.save

    #redirect_to the sections index where you can create sections
    redirect_to new_course_section_path(course)
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    updated_info = params.require(:course).permit(:title, :description, :category_id)
    course = Course.find(params[:id])
    course.update_attributes(updated_info)
    redirect_to course_path
  end

  def enroll
    course = Course.find(params[:id])
    current_user.courses << course
    render :json => { result: "enrolled"}
  end

  def unenroll
    course = Course.find(params[:id])
    current_user.courses.delete(course)
    render :json => { result: "unenrolled"}
  end

  def delete
  end

end

