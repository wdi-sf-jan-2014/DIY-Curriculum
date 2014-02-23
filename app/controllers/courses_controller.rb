class CoursesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  include CoursesHelper

  def index
    @created_courses = createdCourses(current_user) 
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
  end

  def edit
  end

  def update
  end

  def delete
  end

end