class CoursesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  include CoursesHelper

  def index
    @categories = Category.all
    @created_courses = createdCourses
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